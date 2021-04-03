import 'package:flutter/material.dart';
import './Conversations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        primaryColor: Color(0xff7e66d4),
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: Conversations(),
      debugShowCheckedModeBanner: false,
    );
  }
}
