import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notesapp/demo_screen.dart';

class UiHelper{
  static CustomTextField(String text,IconData iconData,TextEditingController controller,bool toHide){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 15),
      child: Container(
        child: TextField(
          controller: controller,
          obscureText: toHide,
          decoration: InputDecoration(
            hintText: text,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24)
            )
          ),
        ),
      ),
    );
  }
  static CustomContainer(
      double height,
      double width,
      double radius,
      String title,
      String desc,
      Color color,
     ){
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: GestureDetector(onTap: (){
         //Navigator.push(context, MaterialPageRoute(builder: (context)=>DemoScreen()));
      },
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text(desc),
            ],
          ),
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: color,
          ),
        ),
      ),
    );
  }
}