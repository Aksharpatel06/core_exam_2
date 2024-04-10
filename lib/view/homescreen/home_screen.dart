import 'package:coreexam/utils/color.dart';
import 'package:coreexam/utils/datalist.dart';
import 'package:coreexam/utils/variable.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaycolor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Student Details',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) => student_details(index))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isdetails =true;
          Navigator.of(context).pushNamed('/data');
        },
        backgroundColor: primaycolor,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget student_details(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: color2,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 10,),
                Container(
                  height: 70,
                  width: 70,
                  color: Colors.black,
                ),
                SizedBox(width: 10,),
                Column(
                  children: [
                    SizedBox(height: 10,),
                    Text("Grid:${data[index].grid}"),
                    Text("Name:${data[index].name}"),
                    Text("Std:${data[index].std}"),
                  ],
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      editindex=index;
                      isdetails =false;
                      Navigator.of(context).pushNamed('/data');
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: color1,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Icon(Icons.edit),
                  ),
                ),
                SizedBox(width: 10,),
                InkWell(
                  onTap: () {
                    setState(() {
                      data.removeAt(index);
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Icon(Icons.delete),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
