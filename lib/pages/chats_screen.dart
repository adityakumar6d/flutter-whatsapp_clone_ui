import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (BuildContext context, int index) => Column(
              children: <Widget>[
                const Divider(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundColor: const Color(0xff075E54),
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(dummyData[index].avatarUrl),
                    // backgroundImage: Image.network(dummyData[index].avatarUrl, fit: BoxFit.fill) as ImageProvider,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dummyData[index].name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        dummyData[index].time,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                  subtitle: Container(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      dummyData[index].message.length > 30
                          ? dummyData[index].message.substring(0, 31) + "..."
                          : dummyData[index].message,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ],
            ));
  }
}
