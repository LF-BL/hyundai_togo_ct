import 'package:hyundai_togo_ct/sav/model/user_model.dart';

class Message{
  final User sender;
  final String time;
  final String text;
  final bool isliked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isliked,
    this.unread,
  });

}

final User currentUser = User(
    id: 0,
    name: 'Current user',
    imageUrl: 'assets/images/chat/omer.jpg'
);

final User omer = User(
    id: 1,
    name: 'Omer',
    imageUrl: 'assets/images/chat/omer.jpg'
);

final User tof1 = User(
    id: 2,
    name: 'Photo1',
    imageUrl: 'assets/images/chat/tof1.jpg'
);

final User tof2 = User(
    id: 3,
    name: 'Photo2',
    imageUrl: 'assets/images/chat/tof2.jpg'
);

List<User> favorites =[omer,tof1,tof2];

List<Message> chats=[
  Message(
    sender: omer,
    time: '10:41 pm',
    text: 'hi',
    isliked: true,
    unread: true,
  ),

  Message(
    sender: tof1,
    time: '10:40 pm',
    text: 'How are you my dear?',
    isliked: true,
    unread: false,
  ),

  Message(
    sender: tof2,
    time: '12:41 pm',
    text: 'Send me my money adjoa ,i will not ask you again'
        'qfdsdjqdklfqerisdbverzsqklqze',
    isliked: false,
    unread: false,
  ),

  Message(
    sender: omer,
    time: '00:06 pm',
    text: 'how old are you? me i have twenty five years',
    isliked: false,
    unread: false,
  ),

  Message(
    sender: tof2,
    time: '17:00 pm',
    text: 'director ,i want to do a reclametion,ours technitiens do the bad works',
    isliked: false,
    unread: false,
  ),
];

List<Message> messages = [

  Message(
    sender: currentUser,
    time: '10:41 pm',
    text: 'hi',
    isliked: true,
    unread: true,
  ),

  Message(
    sender: currentUser,
    time: '10:40 pm',
    text: 'How are you my dear?',
    isliked: true,
    unread: false,
  ),

  Message(
    sender: tof2,
    time: '12:41 pm',
    text: 'Send me my money adjoa ,i will not ask you again',
    isliked: false,
    unread: false,
  ),

  Message(
    sender: currentUser,
    time: '00:06 pm',
    text: 'how old are you? me i have twenty five years',
    isliked: false,
    unread: false,
  ),

  Message(
    sender: tof2,
    time: '17:00 pm',
    text: 'director ,i want to do a reclametion,ours technitiens do the bad works',
    isliked: false,
    unread: false,
  ),

  Message(
    sender: tof2,
    time: '12:41 pm',
    text: 'Send me my money adjoa ,i will not ask you again',
    isliked: false,
    unread: false,
  ),

  Message(
    sender: omer,
    time: '00:06 pm',
    text: 'how old are you? me i have twenty five years',
    isliked: true,
    unread: false,
  ),

  Message(
    sender: tof2,
    time: '17:00 pm',
    text: 'director ,i want to do a reclametion,ours technitiens do the bad works',
    isliked: true,
    unread: false,
  ),
];
