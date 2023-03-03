import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'user_modal.dart';

class user extends StatelessWidget {
List<userModel>users=[
  userModel(id: 1, name: "ziad waleed", phone:"01271121931"),
  userModel(id: 2, name: "yossef sayed", phone:"01271121931"),
  userModel(id: 3, name: "hazeem sayed", phone:"01271121931"),
  userModel(id: 4, name: "mohamed waleed", phone:"01271121931"),
  userModel(id: 5, name: "ali alaa", phone:"01271121931"),
  userModel(id: 6, name: "timon bomba", phone:"01271121931"),
   userModel(id: 1, name: "ziad waleed", phone:"01271121931"),
  userModel(id: 2, name: "yossef sayed", phone:"01271121931"),
  userModel(id: 3, name: "hazeem sayed", phone:"01271121931"),
  userModel(id: 4, name: "mohamed waleed", phone:"01271121931"),
  userModel(id: 5, name: "ali alaa", phone:"01271121931"),
  userModel(id: 6, name: "timon bomba", phone:"01271121931"),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("user"),),
      body:ListView.separated(
        itemBuilder:(context,Index)=>builduserItem(users[Index]) ,
         separatorBuilder:(Context,Index)=>
         Padding(
           padding: const EdgeInsetsDirectional.only(start: 20),
           child: Container(width:double.infinity,height: 1,color: Colors.amber,),
         ),
          itemCount:users.length
          )
    );
  }
}
Widget builduserItem(userModel user){
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Row(
          children: [
          CircleAvatar(radius:25,child:Text("${user.id}"),),
          SizedBox(width: 20,),
          Column(
            mainAxisSize:MainAxisSize.min,
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Text("${user.name}",style: TextStyle(fontSize:20,fontWeight:FontWeight.bold),),
              Text("${user.phone}")
            ],
          ),
          
        ],),
  );

 }