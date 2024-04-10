import 'package:coreexam/model/modelclass.dart';
import 'package:coreexam/utils/variable.dart';
import 'package:coreexam/view/datascreen/data_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/color.dart';

class Displayscreen extends StatefulWidget {
  const Displayscreen({super.key});

  @override
  State<Displayscreen> createState() => _DisplayscreenState();
}

class _DisplayscreenState extends State<Displayscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaycolor,
        centerTitle: true,
        title: Text('Deplay screen',style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
            child: CircleAvatar(
              radius: 40,
              backgroundImage: (imgpath!=null)?FileImage(imgpath!):null,
            ),
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: color3,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 1,
                  blurRadius: 0.5
                )
              ]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Grid:${data[displayindex].grid}"),
                Text("Name:${data[displayindex].name}"),
                Text("Std:${data[displayindex].std}"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
