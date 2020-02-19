import 'package:baatcheet/classes/User.dart';

class Message {
  User sender;
  String time;
  String text;
  bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.unread,
  });
}

List<Message> chats = [
  Message(
    sender: afaq,
    time: '5:30 PM',
    text: 'Mein Afaq Hn...',
    unread: true,
  ),
  Message(
    sender: zeeshan,
    time: '4:30 PM',
    text: 'Mein Zeeshan Hn...',
    unread: true,
  ),
  Message(
    sender: prince,
    time: '3:30 PM',
    text: 'Shahi Khandan ka nihayat honyar sapoot',
    unread: false,
  ),
  Message(
    sender: bhalu,
    time: '2:30 PM',
    text: 'jani! masla he ni hai...',
    unread: true,
  ),
];