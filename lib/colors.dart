import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        colorScheme: ColorScheme.dark().copyWith(
          primary: Colors.blue[900], // Dark blue
          background: Colors.blue[900], // Dark blue background
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dark Blue Theme'),
      ),
      body: Center(
        child: Text(
          'Welcome to the Dark Blue Theme!',
          style: TextStyle(fontSize: 20, color: Colors.white), // White text
        ),
      ),
    );
  }
}
