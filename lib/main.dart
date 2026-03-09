import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('My First Cheese'),
      centerTitle: true,
      backgroundColor: Colors.cyan,
    ),
    body: Center(
      child: Text('I Like Cheese',
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        letterSpacing: 2.0,
        color: Colors.amber,
      ),),
    ),
    floatingActionButton: FloatingActionButton(onPressed: null, 
    child: Text('Cheese'),
    backgroundColor: Colors.red,
    ),
    ),
  ),
);

