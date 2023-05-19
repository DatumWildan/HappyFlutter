import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void method1() {
    Fluttertoast.showToast(
        msg: 'This is Center Short Toast',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter Toast'),
      ),
      body: new Center(
        child: new ElevatedButton(
            onPressed: () {
              method1();
            },
            child: new Text('Flutter Toast')),
      ),
    );
  }
}
