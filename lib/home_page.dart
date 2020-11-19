import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("MAGICDEX")
       ),
     body: Center(
       child: GestureDetector(
         child: Text('Contador: $counter',
         style: TextStyle(fontSize: 20)),
         onTap: () {
           setState(() {
             counter++;
           });
         }),
     ),
      floatingActionButton: FloatingActionButton(
         child: Icon(Icons.add),
         onPressed: () {
           setState(() {
             counter++;
           });
         },
       ),
   );
  }
}