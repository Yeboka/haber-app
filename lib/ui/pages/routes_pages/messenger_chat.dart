import 'package:flutter/material.dart';

class MessengerChat extends StatefulWidget {
  const MessengerChat({
    Key? key,
    required this.idChat
  }) : super(key: key);
  final int idChat;

  @override
  State<StatefulWidget> createState() {
    return _MessengerChatState();
  }
}

class _MessengerChatState extends State<MessengerChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
