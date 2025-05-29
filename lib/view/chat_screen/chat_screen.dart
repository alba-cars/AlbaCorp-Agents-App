import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/chat_screen/cubit/chat_cubit.dart'
    as cubit;

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
  const _ChatScreenLayout();

  @override
  State<_ChatScreenLayout> createState() => _ChatScreenLayoutState();
}

class _ChatScreenLayoutState extends State<_ChatScreenLayout> {
  late final InMemoryChatController _chatController;

  @override
  void initState() {
    super.initState();
    _chatController = InMemoryChatController();
  }

  @override
  void dispose() {
    _chatController.dispose();
    super.dispose();
  }

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
            chatController: _chatController,
            currentUserId: getIt<AuthBloc>().state.user?.id ?? '',
            onMessageSend: (text) {
              context.read<cubit.ChatCubit>().handleSendPressed(
                    types.PartialText(text: text),
                  );
            },
            resolveUser: (String id) async {
              return User(id: id);
            },
          );
        },
      ),
    );
  }
}
