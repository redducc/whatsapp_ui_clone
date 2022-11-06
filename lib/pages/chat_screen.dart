import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: ((context, i) => Column(
            children: <Widget>[
              Divider(
                height: 10.0,
              ),
              ListTile(
                leading: CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(dummyData[i].avatarUrl),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      dummyData[i].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      dummyData[i].time,
                      style: TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                  ],
                ),
                subtitle: Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    dummyData[i].message,
                    style: TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
