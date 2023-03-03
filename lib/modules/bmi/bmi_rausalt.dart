import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class bmiRusalet extends StatelessWidget {
  final int rusalt;
  final bool isMale;
  final int Age;
  bmiRusalet({
    required this.rusalt,
    required this.Age,
    required this.isMale
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("bmi rusalt"),
      leading: IconButton(icon: Icon(Icons.keyboard_arrow_left),
      onPressed: (){
        Navigator.pop(context);
      },
      ),
      
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gender:${isMale?"male":"female"}",style: TextStyle(fontSize:50),),
            Text("age:$Age",style: TextStyle(fontSize:50),),
            Text("rusalt:$rusalt",style: TextStyle(fontSize:50),)
          ],
        ),
      ),
    );
  }
}