import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Yehor's Test App",
      theme: ThemeData(
      ),
      home: MyHomePage(title: "Yehor's Test App Home Page"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _color = 0xFFFFFFFF;

  void _generateNewColor() {
    setState(() {
      var rng = new Random();
      _color = rng.nextInt(1<<32);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(_color),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GestureDetector(
        onTap: _generateNewColor,
      ),
    );
  }
}
