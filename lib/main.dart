import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      body: const Center(
        child: MyApp(),
      ),
    ),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
    
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {
            // Handle back button press
          },
        ),
      actions   :[ IconButton(
          icon: const Icon(Icons.search),
          color: Colors.black,
          onPressed: () {
            // Handle search button press
          },
        ),
      ],
        title: Text("قیمت به روز ارز و طلا", style: TextStyle(color: Colors.black),),
      ),
      body: const Center(
        child: Text('Hello, World!'),
      ),
    );
  }
}