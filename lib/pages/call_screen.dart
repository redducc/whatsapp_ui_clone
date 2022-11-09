import 'package:flutter/material.dart';

class SingleCallWidget extends StatelessWidget {
  final String? chatMessage;
  final String? chatTitle;
  final String? callStatus;
  final String? imageUrl;
  final String? callType;

  const SingleCallWidget({
    Key? key,
    this.chatMessage,
    this.chatTitle,
    this.callStatus,
    this.imageUrl,
    this.callType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(imageUrl!),
        ),
        Expanded(
          child: ListTile(
              title: Text('$chatTitle',
                  style: const TextStyle(fontWeight: FontWeight.w600)),
              subtitle: Row(children: [
                Icon(
                  callStatus == 'Incoming'
                      ? (Icons.call_received_sharp)
                      : Icons.call_made_sharp,
                  size: 15,
                  color: callStatus == 'Incoming' ? Colors.teal : Colors.red,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Text(
                      '$chatMessage',
                      style: const TextStyle(overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
              ]),
              trailing: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Icon(
                        callType == 'Audio' ? Icons.call : Icons.videocam,
                        color: Colors.teal),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
