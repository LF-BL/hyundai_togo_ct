import 'package:hyundai_togo_ct/sav/model/message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hyundai_togo_ct/sav/model/user_model.dart';

class ChatScreen extends StatefulWidget {

  final User user;
  ChatScreen({this.user});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  _buildMessage(Message message,bool isMe){
    return Container(
        margin: isMe ?
        EdgeInsets.only(top: 8.0,bottom: 8.0,left: 80.0,right: 10.0)
            : EdgeInsets.only(top: 8.0,bottom: 8.0,right: 80.0,left: 10.0),
        padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 15.0),
        //width: MediaQuery.of(context).size.width - 0.75,
        decoration: BoxDecoration(
          color: isMe ? Color.fromRGBO(10, 31, 110, 1) : Colors.grey,
          borderRadius: isMe ? BorderRadius.only(
            topLeft: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
    )
        : BorderRadius.only(
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
            topLeft: Radius.circular(10.0),
    ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(message.text, style: TextStyle(color: Colors.white,fontSize: 8.0 ,fontWeight: FontWeight.w600)),
            SizedBox(height: 5.0,),
            Text(message.time, style: TextStyle(color: Colors.white,fontSize: 8.0 ,fontWeight: FontWeight.w600),),
          ],
        )

    );
  }

  _buildMessageComposer(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 40.0,
      color: Colors.white54,
      child: Row(
        children: <Widget>[
          IconButton(icon: Icon(Icons.photo),
              iconSize: 16.0,
              color: Theme.of(context).primaryColor,
              onPressed: null
          ),
          Expanded(
              child: TextField(

            textCapitalization: TextCapitalization.sentences,
            onChanged: (value){},
            decoration: InputDecoration.collapsed(hintText: 'Envoyer un message...',
            ),
          )
          ),
          IconButton(icon: Icon(Icons.send),
              iconSize: 16.0,
              color: Theme.of(context).primaryColor,
              onPressed: null),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      //backgroundColor: Theme.of(context).primaryColor,
      //backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
         // widget.user.name,
          "Messages",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(10, 31, 110, 1)
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white54,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            iconSize: 30.0,
            color: Color.fromRGBO(10, 31, 110, 1),
            onPressed: (){},
          ),
        ],
      ),
      body: GestureDetector(
        onTap: ()=>FocusScope.of(context).unfocus(),
        child: Column(
          children: <Widget>[
            Expanded(

              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  child: ListView.builder(
                      reverse: true,
                      padding: EdgeInsets.only(top: 15.0),
                      itemCount: messages.length,
                      itemBuilder: (BuildContext context,int index){
                        final Message message = messages[index];
                        //final bool isMe= message.sender.id => currentUser.id;
                        final bool isMe = message.sender.id == currentUser.id;
                        return _buildMessage(message, isMe);
                      }),
                ),
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }
}
