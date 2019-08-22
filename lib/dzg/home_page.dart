import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
      appBar: AppBar(
        title: Text('店掌柜'),
        backgroundColor: Colors.blue,
      ),
      body: MaterialApp(
//        title: '店掌柜',
//        theme: ThemeData(
//            backgroundColor: Color.fromARGB(1, 40, 200, 200)
//        ),
        home: Center(
          child: Text('ssssssss'),
        ),
      ),
    );

  }
}
