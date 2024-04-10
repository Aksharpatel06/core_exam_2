


import 'package:coreexam/model/modelclass.dart';
import 'package:flutter/material.dart';

import '../../utils/color.dart';
import '../../utils/datalist.dart';
import '../../utils/variable.dart';

class Data_screen extends StatefulWidget {
  const Data_screen({super.key});

  @override
  State<Data_screen> createState() => _Data_screenState();
}

TextEditingController id =TextEditingController(text: (isdetails) ?'1':data[editindex].grid.toString());
TextEditingController name=TextEditingController(text:(isdetails) ?'hello':data[editindex].name);
TextEditingController std =TextEditingController(text: (isdetails) ?'3':data[editindex].std.toString());
GlobalKey studentkey = GlobalKey();
class _Data_screenState extends State<Data_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaycolor,
        centerTitle: true,
        title: Text('Details',style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: studentkey,
          child: Column(
            children: [
              CircleAvatar(

              ),
              TextFormField(
                controller: id,
                // validator: (value) {(value.empty|| value='')?'fill value':value },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Grid',
                  focusColor: color2,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: color2)
                  )
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                controller: name,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: 'name',
                    focusColor: color2,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: color2)
                    )
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                controller: std,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'std',
                    focusColor: color2,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: color2)
                    )
                ),
              ),
              SizedBox(height: 10,),
              (isdetails)?InkWell(
                onTap: () {
                  Student s1=Student(grid: int.parse(id.text), name: name.text, std: int.parse(id.text));
                  data.add(s1);
                  Navigator.of(context).pushNamed('/').then((value) => setState(() {
                  }));
                },
                child: Container(
                  height: 50,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: color2,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('save'),
                ),
              ):InkWell(
                onTap: () {
                  data[editindex].grid=int.parse(id.text);
                  data[editindex].name=name.text;
                  data[editindex].std=int.parse(std.text);
                  Navigator.of(context).pushNamed('/').then((value) => setState(() {
                  }));
                },
                child: Container(
                  height: 50,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: color2,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('update'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
