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
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: IconButton(
          
            icon: const Icon(
            
              size: 30,
              Icons.menu),
            color: Colors.black,
            onPressed: () {
              // Handle back button press
            },
          ),
        ),
      actions   :[
        
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
            
            textAlign: TextAlign.right,"قیمت به روز ارز و طلا", style: TextStyle(
            fontFamily: 'dana', fontSize: 20,fontWeight: FontWeight.bold,
            
            color: Colors.black),),
        ),
        
         Padding(
            padding: const EdgeInsets.only(right: 16.0),
           child: IconButton(
           icon: Image.asset(
             'assets/images/icon.png',
             width: 40,
             height: 40,
           ),
            color: Colors.black,
            onPressed: () {
              // Handle search button press
            },
                   ),
         ),


        
      ],
        
      ),
      body: const Center(
        child: Text('Hello, World!'),
      ),
    );
  }
}