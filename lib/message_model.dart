import 'package:flutter/material.dart';
import 'user_model.dart';

class Message{
   User sender;
   String time,text;
   bool isLiked;
   bool unread;

  Message(this.sender, this.time, this.text, this.isLiked, this.unread);

}
 User Current_User = User(0, 'Current user', 'assets/nila.jpg');

 User ridhita = User(1, 'Ridhita', 'assets/ridhita.jpeg');
 User sejuti = User(2, 'Sejuti', 'assets/sejuti.jpg');
 User foyshal = User(3, 'Foyshal', 'assets/foyshal.jpg');
 User joie = User(4, 'Joie', 'assets/joie.jpg');
 User jonna = User(5, 'Jonna', 'assets/jonna.jpg');
 User tanvir = User(6, 'Tanvir', 'assets/tanvir.jpg');
 User harun = User(7, 'Harun', 'assets/harun.jpg');

//Favorite contracts

List<User> favorite = [tanvir,ridhita,jonna,joie,sejuti];

//Example chat home screen

List<Message> chats =[
  Message(sejuti, '5:00 PM', 'hello babes',false,true),
  Message(ridhita, '4:47 PM', 'hi there',false,false),
  Message(jonna, '2:00 AM', 'I like you ',false,true),
  Message(joie, '6:00 PM', 'hey ',false,true),
  Message(harun, '8:00 AM', 'Do you eat breakfast?',false,false),
  Message(tanvir, '6:00 AM', 'hey how are you?',false,true),
  Message(foyshal, '12:00 AM', 'hey where are you?',false,false),
  Message(Current_User, '11:00 AM', 'Are you busy?',false,true),
];

//Example message in chat screen

List<Message> message =[
  Message(tanvir, '5:00 PM', 'hey how are you?',true,true),

  Message(Current_User, '5:00 PM', 'hi i am fine & you?',false,true),

  Message(tanvir, '5:20 PM', 'fine ,what are you doing?',true,true),

  Message(Current_User, '5:30 PM', 'noting and you?',true,true),

  Message(tanvir, '5:35 PM', 'same to you',false,true),

  Message(Current_User, '5:40 PM', 'do you eat anything?',true,true),

  Message(tanvir, '5:50 PM', 'yes,tea & smoke you?',false,true),

  Message(Current_User, '5:55 PM', 'same to you',true,true),
];