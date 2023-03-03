import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class counter extends StatefulWidget {

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
int count =1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child:Center(
        child: Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
          TextButton(onPressed: (){
            setState(() {
              
            });
            count--;
            print(count);
          }, child:Text("minus")),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),
            child: Text("$count",
            style: TextStyle(fontSize: 50,fontWeight: FontWeight.w900),
            ),
          ),
          TextButton(onPressed: (){
            setState(() {
              
            });
            count++;
            print(count);
          }, child:Text("plus")),
        ],),
      ))
    );
  }
}