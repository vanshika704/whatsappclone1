import 'package:flutter/material.dart';

class Chat {
  final String name;
  final String lastMessage;
  final String time;

  Chat({
    required this.name,
    required this.lastMessage,
    required this.time,
  });
}

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List<Chat> chatList = [
    Chat(name: 'name', lastMessage: 'Hello!', time: '10:30 AM'),
    Chat(name: 'name', lastMessage: 'Hi there!', time: '11:45 AM'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
      ),
      body: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (BuildContext context, int index) {
          Chat chat = chatList[index];

          return ListTile(
            leading: CircleAvatar(
              child: Text(chat.name[0]),
            ),
            title: Text(chat.name),
            subtitle: Text(chat.lastMessage),
            trailing: Text(chat.time),
            onTap: () {},
          );
        },
      ),
    );
  }
}
