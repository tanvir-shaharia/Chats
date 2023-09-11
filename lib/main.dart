import 'package:flutter/material.dart';
import 'package:my_chat/home_screen.dart';
import 'package:my_chat/loading.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'flutter chat ui',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
          colorScheme: ColorScheme.fromSwatch(accentColor:const Color(0x0fffe9eb))

      ),
      initialRoute: '/',
      routes: {
        '/' : (context)=> const Loading()
      } ,
    );
  }
}

