import 'package:flutter/material.dart';
import 'package:notesapp/uihelper.dart';

import 'demo_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Note app'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
          UiHelper.CustomContainer(150, 175, 25, 'task','description' , Colors.yellow, ),
          UiHelper.CustomContainer(200, 175, 25, 'vicon','description' , Colors.lightGreenAccent, )
    ],
    ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              UiHelper.CustomContainer(200, 175, 25, 'UI Webinar','description' , Colors.purpleAccent, ),
              UiHelper.CustomContainer(200, 175, 25, 'UX Writing','description' , Colors.lightBlueAccent, ),
            ],
          ),
          UiHelper.CustomContainer(150, 175, 25, 'task','description' , Colors.yellow, ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DemoScreen()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
