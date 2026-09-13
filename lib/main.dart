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
      backgroundColor: Color(int.parse('0xFFF3F3F3')),
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
      body: Column(
        children: [
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
           
            children: [
                
          Text(
            
            textAlign: TextAlign.right,"نرخ ارز آزاد چیست ", style: TextStyle(
            fontFamily: 'dana', fontSize: 20,fontWeight: FontWeight.bold,
            
            color: Colors.black),),
           
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
             child: IconButton(
             icon: Image.asset(
               'assets/images/question.png',
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
        ),

         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 30.0),
           child: Text(style: const TextStyle(
    fontFamily: 'dana',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  ),
              textAlign: TextAlign.right
              ,"نرخ ارز در معاملات نقدی و رایج روزانه است معاملات نقدی معاملاتی هستند که خریدار و فروشنده به محض انجام معامله ارز و ریال را باهم تبادل می نمایند  ", 
           
           
           
           
           
              )),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
           child: Container(
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),  
             color: Color(int.parse('0xff828282')),
            ),
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 25.0),
               child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: const [
                 Text('تغییر', style: TextStyle(color: Colors.white,fontFamily: "dana",fontSize: 16,fontWeight: FontWeight.bold),),
                   Text('قیمت', style: TextStyle(color: Colors.white,fontFamily: "dana",fontSize: 16,fontWeight: FontWeight.bold),),
               
                                  Text('نام آزاد ارز', style: TextStyle(color: Colors.white,fontFamily: "dana",fontSize: 16,fontWeight: FontWeight.bold),),
               
                 ],
               ),
             ),
           ),
         ),








 Arz_item(),
 SizedBox(height: 12,),
 Arz_item(),
 SizedBox(height: 12,),
 Arz_item(),
 SizedBox(height: 12,),
 Arz_item(),
 SizedBox(height: 12,),
 Arz_item(),
 SizedBox(height: 12,),
 Arz_item(),














        ],
      ),
    );
  }
}

class Arz_item extends StatelessWidget {
  const Arz_item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,),
              child: Container(
               height: 54,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(30.0),
                 border: Border.all(
                   color: const Color(0xFFE0E0E0),
                   width: 1.2,
                 ),
                 boxShadow: const [
                   BoxShadow(
                     color: Colors.white,
                     offset: Offset(-3, -3),
                     blurRadius: 6,
                   ),
                   BoxShadow(
                     color: Color(0xFFBDBDBD),
                     offset: Offset(3, 3),
                     blurRadius: 6,
                   ),
                 ],
               ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                    Text('+5', style: TextStyle(color: Colors.green,fontFamily: "dana",fontSize: 16,fontWeight: FontWeight.bold),),
                      Text('26000', style: TextStyle(color: Colors.black,fontFamily: "dana",fontSize: 16,),),
                  
                                     Text('یورو', style: TextStyle(color: Colors.black,fontFamily: "dana",fontSize: 16,fontWeight: FontWeight.bold),),
                  
                    ],
                  ),
                ),
              ),
            );
  }
}
