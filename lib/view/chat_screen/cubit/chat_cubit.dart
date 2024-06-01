import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/data/repository/ticket_repo.dart';
import 'package:real_estate_app/model/file_object.dart';
import 'package:real_estate_app/model/paginator.dart';
import 'package:real_estate_app/model/ticket_model.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/result.dart';
import 'package:real_estate_app/util/s3_helpers.dart';
import 'package:real_estate_app/util/status.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:uuid/uuid.dart';

part 'chat_state.dart';
part 'chat_cubit.freezed.dart';

@injectable
class ChatCubit extends Cubit<ChatState> {
  ChatCubit(this._ticketRepo, @factoryParam String ticketId)
      : super(ChatState(ticketId: ticketId)) {
    getTicketMessages();
  }

  final TicketRepo _ticketRepo;

  Future<void> getTicket({bool refresh = false}) async {
    emit(state.copyWith(getTicketStatus: AppStatus.loadingMore));

    final result = await _ticketRepo.getTicket(state.ticketId);
    switch (result) {
      case (Success<Ticket> s):
        emit(state.copyWith(
            ticket: s.value, getTicketStatus: AppStatus.success));

        break;
      case (Error e):
        emit(state.copyWith(
            getTicketStatus: AppStatus.failure, getTicketError: e.exception));
    }
  }

  Future<void> getTicketMessages({bool refresh = false}) async {
    emit(state.copyWith(getMessagesStatus: AppStatus.loadingMore));

    final result =
        await _ticketRepo.getTicketMessages(ticketId: state.ticketId);
    switch (result) {
      case (Success<List<TicketMessage>> s):
        List<Message> messages = [];
        for (final e in s.value.reversed) {
          if (e.attachments != null && e.attachments!.isNotEmpty) {
            for (final attachment in e.attachments!) {
              if (attachment != null) {
                if (attachment
                    .split('.')
                    .last
                    .contains(RegExp('jpeg|jpg|png|webp'))) {
                  final image = await getFileSignedURLFromS3(attachment);
                  messages.add(ImageMessage(
                      author: User(id: e.senderId),
                      createdAt: e.createdAt.millisecondsSinceEpoch,
                      updatedAt: e.updatedAt.millisecondsSinceEpoch,
                      id: const Uuid().v4(),
                      name: attachment,
                      size: 378000,
                      uri: image));
                } else {
                  messages.add(FileMessage(
                      author: User(id: e.senderId),
                      createdAt: e.createdAt.millisecondsSinceEpoch,
                      updatedAt: e.updatedAt.millisecondsSinceEpoch,
                      id: const Uuid().v4(),
                      name: attachment,
                      size: 378000,
                      uri: attachment));
                }
              }
            }
          }
          messages.add(TextMessage(
              createdAt: e.createdAt.millisecondsSinceEpoch,
              updatedAt: e.updatedAt.millisecondsSinceEpoch,
              author: User(id: e.senderId),
              id: const Uuid().v4(),
              text: e.message.trim()));
        }
        emit(state.copyWith(
            messages: s.value,
            chatMessages: messages,
            getMessagesStatus: AppStatus.success,
            messagesPaginator: s.paginator));
        break;
      case (Error e):
        emit(state.copyWith(
            getMessagesStatus: AppStatus.failure,
            getMessagesError: e.exception));
    }
  }

  void _addMessage(Message message) {
    final messages = List<Message>.of(state.chatMessages)..insert(0, message);
    emit(state.copyWith(chatMessages: messages));
  }

  Future<void> addTicketMessage(Map<String, dynamic> values) async {
    emit(state.copyWith(addMessagesStatus: AppStatus.loadingMore));

    final result = await _ticketRepo.addTicketMessage(values: values);
    switch (result) {
      case (Success s):
        emit(state.copyWith(addMessagesStatus: AppStatus.success));

        break;
      case (Error e):
        emit(state.copyWith(
            addMessagesStatus: AppStatus.failure,
            addMessagesError: e.exception));
    }
  }

  void handleSendPressed(PartialText message) {
    final textMessage = TextMessage(
      author: User(id: getIt<AuthBloc>().state.user?.id ?? ''),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );
    addTicketMessage({
      'message': message.text,
      'ticketId': state.ticketId,
    });
    _addMessage(textMessage);
  }

  void handleFileSelection() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );

    if (result != null && result.files.single.path != null) {
      final message = FileMessage(
        author: User(id: getIt<AuthBloc>().state.user?.id ?? ''),
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: const Uuid().v4(),
        name: result.files.single.name,
        size: result.files.single.size,
        uri: result.files.single.path!,
      );
      addTicketMessage({
        'attachments': [FileObject(localImage: result.files.single.path!)],
        'ticketId': state.ticketId,
        "message": 'attachment'
      });

      _addMessage(message);
    }
  }

  void handleImageSelection() async {
    final result = await ImagePicker().pickImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.gallery,
    );

    if (result != null) {
      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);

      final message = ImageMessage(
        author: User(id: getIt<AuthBloc>().state.user?.id ?? ''),
        createdAt: DateTime.now().millisecondsSinceEpoch,
        height: image.height.toDouble(),
        id: const Uuid().v4(),
        name: result.name,
        size: bytes.length,
        uri: result.path,
        width: image.width.toDouble(),
      );

      addTicketMessage({
        'attachments': [FileObject(localImage: result.path)],
        'ticketId': state.ticketId,
        "message": 'attachment'
      });

      _addMessage(message);
    }
  }
}
