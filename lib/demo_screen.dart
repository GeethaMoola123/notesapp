
import 'package:flutter/material.dart';
import 'package:notesapp/uihelper.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Notes Update'),
        centerTitle: true,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.CustomTextField("title", Icons.person, titleController, false),
          UiHelper.CustomTextField("title", Icons.person, descController, false)
    ],
    ));
  }
}

