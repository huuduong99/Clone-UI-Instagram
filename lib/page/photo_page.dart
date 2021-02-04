import 'package:flutter/material.dart';

class PhotoPage extends StatefulWidget {
  @override
  _PhotoPageState createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text('Photo', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}