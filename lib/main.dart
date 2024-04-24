import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});
  static List<String> images = [
    "images/abh.jpeg",
    "images/download.jpeg",
    "images/website.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: const Center(child: Text('SAAD')),
        ),
        body: ListView.builder(itemBuilder: (buildContext, index) {
    
          return  Card(
              child: ListTile(
                leading:CircleAvatar(backgroundImage: AssetImage(images[index]),),
            title: Text('Title'),
            subtitle: Text('subtitle'),
          ));
        },
        itemCount: images.length,
        ),
        // padding: const EdgeInsets.all(50),
        // reverse: true,
        // shrinkWrap: true,
        // children: [
        //   Card(
        //     child: ListTile(
        //       title: Text("Item number one"),
        //     ),
        //   ),
        //   Card(
        //     child: ListTile(
        //       title: Text("Item number two"),
        //     ),
        //   ),
        //   Card(
        //     child: ListTile(
        //       title: Text("Item number three"),
        //     ),
        //   ),
        // ],
      ),
    );
  }
}
