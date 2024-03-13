import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/view/chat_screen/cubit/chat_cubit.dart';
import 'package:uuid/uuid.dart';

class ChatScreen extends StatelessWidget {
  static const routeName = '/chatScreen';
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChatCubit>(),
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
  List<types.Message> _messages = [];
  final _user = const types.User(
    id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
  );

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    _addMessage(textMessage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        centerTitle: true,
      ),
      body: Chat(
        messages: _messages,
        onSendPressed: _handleSendPressed,
        user: _user,
      ),
    );
  }
}
