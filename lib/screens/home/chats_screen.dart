import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';
import 'package:whatsapp_clone/screens/conversation.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, i) => Column(
              children: [
                Divider(
                  height: 10.0,
                  color: Colors.transparent,
                ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundColor: Theme.of(context).colorScheme.primary,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(data[i].avatarUrl),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data[i].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        data[i].time,
                        style: TextStyle(color: Colors.grey, fontSize: 14.0),
                      )
                    ],
                  ),
                  subtitle: Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      data[i].message,
                      style: TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Conversation(
                              name: data[i].name, imgUrl: data[i].avatarUrl))),
                )
              ],
            ));
  }
}
