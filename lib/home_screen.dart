import 'package:flutter/material.dart';
import 'package:my_chat/favoritecontracts.dart';
import 'package:my_chat/loading.dart';
import 'package:my_chat/message_model.dart';
import 'package:my_chat/navbar.dart';
import 'package:my_chat/recentchats.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'catagorySelector.dart';
import 'myDrwerHeader.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime backpassed = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop: () async {
        final difference = DateTime.now().difference(backpassed);
        final isWarning = difference >= const Duration(seconds: 2);

        backpassed = DateTime.now();
        if(isWarning){
          const message = 'Press back again  to exit';
          Fluttertoast.showToast(msg: message,fontSize: 18.0);
          return false;
        }else{
          Fluttertoast.cancel();
          return true;
        }

      },
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,

      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        // leading: IconButton(
        //     icon: const Icon(Icons.menu),
        //     iconSize: 30.0,
        //     color: Colors.white,
        //   onPressed: () =>Scaffold.of(context).openDrawer(),
        // ),
        title: const Text('Chats',style: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold
        )),
        centerTitle: true,
        actions:  [
          IconButton(
            icon: const Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
        drawer:const NavBar(),
        body:  Column(
          children: [
            const CatagorySelector(),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(color:Color(0xFFFFFDE7),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight:Radius.circular(30)
                )),
                child:   const Column(children: [
                  FavoriteContracts(),
                  RecentChats()
                ],),


              ),
            )
          ],
        ),

      ),
    );
  }
}




