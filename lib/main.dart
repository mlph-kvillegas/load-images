import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Load Images'),
    );
  }
}

class MyHomePage extends StatelessWidget { 
   MyHomePage({Key? key, required this.title}) : super(key: key);
   
   final String title; 
   @override 
   Widget build(BuildContext context) {
      return Scaffold( 
         appBar: AppBar(title: Text(this.title), ), 
         body: SingleChildScrollView (
           child:
            //  Column(
             Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Loading From Network"),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.network("https://hdwallsource.com/img/2014/8/view-wallpapers-37825-38692-hd-wallpapers.jpg"),
                  ),
                  Text("Loading From Assets"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Image.asset('assets/scenery-1.jpg'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Image.asset('assets/scenery-2.jpg'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child:  Image.asset('assets/scenery-3.jpg'),
                      ),
                    ],
                  )
                ],
              ),
            // ),
        ),          
      );
   }
}