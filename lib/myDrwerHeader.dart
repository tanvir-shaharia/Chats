import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5.0,top: 5.0,right: 5.0),
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/sejuti.jpg'),fit: BoxFit.cover)
      ),
      width: double.infinity,
      height: 300,
      padding: const EdgeInsets.only(top: 20.0,bottom: 10.0,left: 5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10,left: 5.0),
            height: 70,
            child: const CircleAvatar(
             radius: 35.0,
              backgroundImage: AssetImage('assets/joie.jpg'),
            ),

          ),
          const SizedBox(height: 0),
          const Text(
            "Jonna Joie",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const Text(
            "info@jonnajoie.dev",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}


