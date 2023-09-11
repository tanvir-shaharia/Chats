import 'package:flutter/material.dart';
import 'package:my_chat/message_model.dart';
import 'package:my_chat/user_model.dart';



class ChatScreen extends StatefulWidget {

 final User user;

  const ChatScreen(this.user, {super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  buildMessage(Message message,bool isMe){
    final Container msg =  Container(
      margin: isMe ? const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 80.0 ) : const EdgeInsets.only(top: 8.0 , bottom:  8.0 ),
      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
      width: MediaQuery.of(context).size.width * 0.75,

      decoration:   BoxDecoration(
          color: isMe ?  Colors.yellow :  Colors.red[100],
          borderRadius: isMe ? const BorderRadius.only(topLeft: Radius.circular(15.0) ,bottomLeft: Radius.circular(15.0)): const BorderRadius.only(topRight: Radius.circular(15.0) ,bottomRight: Radius.circular(15.0))
      ),
      child: GestureDetector(
        onTap: ()=> FocusScope.of(context).unfocus(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(message.time,style: const TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.w600,
                fontSize: 16.0
            ),),
            const SizedBox(height: 8.0,),
            Text(message.text,style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 16.0
            )),
          ],
        ),
      ),
    );
    if (isMe){
      return msg;
    }
    return Row(
      children: [
        msg,
        IconButton(
          icon: message.isLiked ?  const Icon(Icons.favorite) : const Icon(Icons.favorite_border),
          iconSize: 30.0,
          color:message.isLiked ? Colors.red : Colors.blueGrey ,
          onPressed: () {},
        ) ,
      ],
    );
  }
  _buildmessagecompose(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0 ),
      height: 70.0,
      color: Colors.white,
      child: Row(

        children: [
          IconButton(onPressed: () {  }, icon: const Icon(Icons.photo),
            iconSize: 25.0,
            color: Colors.red,
            
          ), const Expanded(child: TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration:InputDecoration.collapsed(
              hintText: 'Send a message...'
            ),
          )),
          IconButton(onPressed: () {  }, icon: const Icon(Icons.send),
            iconSize: 25.0,
            color: Colors.red,

          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        title:  Text(widget.user.name,style: const TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        actions:  [
          IconButton(
            icon: const Icon(Icons.more_horiz_outlined),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
                child: ListView.builder(
                  reverse: false,
                  padding: const EdgeInsets.only(top: 15),
                  itemCount: message.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder:
                    (BuildContext context, int index)
                {
                  final Message messag = message[index];
                  bool isMe = messag.sender.id == Current_User.id;
                  return buildMessage(messag,isMe);
                  },
                    ),
              ),
            ),
          ),
          _buildmessagecompose(),
        ],
      ),
    );
  }
}
