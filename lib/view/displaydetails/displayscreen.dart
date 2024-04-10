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
        title: Text('Details',style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
