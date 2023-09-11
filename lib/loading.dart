import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_chat/home_screen.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  
  void nextpage(){
   Future.delayed(const Duration(seconds: 5),() {
    // Navigator.push(context, MaterialPageRoute(builder: (_) => const Home()));
     Navigator.pushReplacement(context,
         MaterialPageRoute(builder:
             (context) =>
             const Home(),
         )
     );
   });
  }
  
  
  @override
  void initState() {
    super.initState();
    nextpage();
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        padding: const EdgeInsets.only(top: 50,bottom: 50.0),
        margin: const EdgeInsets.only( top: 100.0,bottom: 100.0),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            SpinKitFadingCube(
                 color: Colors.white,
                 size: 100.0,
               ),

            Text('Chats',style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0
            ),),
          ],
        ),
      ),
    );
  }
}


