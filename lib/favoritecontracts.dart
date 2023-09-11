import 'package:flutter/material.dart';
import 'package:my_chat/message_model.dart';

import 'chat_screen.dart';


class FavoriteContracts extends StatelessWidget {
  const FavoriteContracts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              const Text('Favorite contracts',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    color: Colors.blueGrey
                ),),
              IconButton(
                icon: const Icon(Icons.more_horiz_outlined),
                iconSize: 30.0,
                color: Colors.blueGrey,
                onPressed: () {},
              ),
            ],),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: favorite.length,
              itemBuilder: (BuildContext context, int index)
              { return GestureDetector(
                onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> ChatScreen(favorite[index]))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      CircleAvatar(radius: 35.0,
                      backgroundImage: AssetImage(favorite[index].imageUrl),),
                      const SizedBox(height: 10.0,),
                      Text(favorite[index].name,style: const TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600
                      ),),
                    ],
                  ),
                ),
              ); },

            ),
          )
        ],
      ),
    );
  }
}
