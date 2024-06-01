import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:go_router/go_router.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/chat_screen/cubit/chat_cubit.dart'
    as cubit;
import 'package:real_estate_app/view/pdf_view_screen/pdf_view_screen.dart';
import 'package:uuid/uuid.dart';

class ChatScreen extends StatelessWidget {
  static const routeName = '/chatScreen';
  const ChatScreen({super.key, required this.ticketId});
  final String ticketId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => getIt<cubit.ChatCubit>(param1: ticketId),
      child: _ChatScreenLayout(),
    );
  }
}

class _ChatScreenLayout extends StatefulWidget {
  const _ChatScreenLayout({super.key});

  @override
  State<_ChatScreenLayout> createState() => _ChatScreenLayoutState();
}

class _ChatScreenLayoutState extends State<_ChatScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        centerTitle: true,
      ),
      body: BlocBuilder<cubit.ChatCubit, cubit.ChatState>(
        builder: (context, state) {
          return Chat(
            messages: state.chatMessages,
            onSendPressed: context.read<cubit.ChatCubit>().handleSendPressed,
            onMessageTap: (context, message) {
              if (message is types.FileMessage) {
                if (message.uri.split('.').last == 'pdf') {
                  context.pushNamed(PdfViewScreen.routeName,
                      pathParameters: {"url": message.uri});
                }
              }
            },
            onAttachmentPressed:
                // context.read<cubit.ChatCubit>().handleFileSelection,
                () => _handleAttachmentPressed(
                    context, context.read<cubit.ChatCubit>()),
            user: types.User(id: getIt<AuthBloc>().state.user?.id ?? ''),
          );
        },
      ),
    );
  }

  void _handleAttachmentPressed(BuildContext context, cubit.ChatCubit bloc) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) => BlocProvider.value(
        value: bloc,
        child: Builder(builder: (context) {
          return SafeArea(
            child: SizedBox(
              height: 144,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      context.read<cubit.ChatCubit>().handleImageSelection();
                      Navigator.pop(context);
                    },
                    child: const Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text('Photo'),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.read<cubit.ChatCubit>().handleFileSelection();
                      Navigator.pop(context);
                    },
                    child: const Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text('File'),
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text('Cancel'),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
