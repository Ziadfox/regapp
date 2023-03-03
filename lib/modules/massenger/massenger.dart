import 'dart:io';

import 'package:flutter/material.dart';
class massenger extends StatelessWidget {
  const massenger({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(
        backgroundColor:Colors.white,
        elevation: 0,
        title:Row(
          children: [
            CircleAvatar(
              radius: 15.0,
              
            ),
            SizedBox(width: 20,),
            Text("Chats",
            style: TextStyle(color: Colors.black),
            )

          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.black12,
            child:IconButton(
              onPressed: (){},
               icon: Icon(Icons.camera_alt),color: Colors.black,)),
          SizedBox(width: 10,),
          CircleAvatar(
            backgroundColor: Colors.black12,
            child: IconButton(onPressed: (){},
            icon:Icon( Icons.edit),color:Colors.black,
            ),
          ),
          SizedBox(width: 10,)
        ],
        titleSpacing: 10
      ),
   
    body: Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        //Start Searchh*********************************************************************************************
        
            Container(
              
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20)
              ),
            
              child: Row(
                
                children: [
                  IconButton(onPressed: (){},
                   icon:Icon( Icons.search)),
                   Text("Search")
                ],
              ),
            ),
        //End Search*********************************************************************************************
           
            SizedBox(height:20,),
        //Start Story*********************************************************************************************
          Container(
            height: 107,
            
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (Context,index){
              return buildStortItems();
            },
            itemCount: 10,
            shrinkWrap:true,
            separatorBuilder:(context, index) => SizedBox(width:20)),
            ),
        
          
        //End Story*********************************************************************************************
          SizedBox(height: 10,),
        //Strt chats*********************************************************************************************
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap:true,
            itemBuilder: (context, index) =>buildChatItems(),
           separatorBuilder: (Context,Index)=> SizedBox(height:30,),
            itemCount: 10)
         
          
        //End chats*********************************************************************************************
          ]
          
        ),
      ),
    ),
    );
  }}
  Widget buildChatItems()
  {
    return Container(

      child: Row(
        
        children: [ Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(radius: 40,),
            CircleAvatar(radius:10,backgroundColor:Colors.white,),
            Padding(
              padding: const EdgeInsets.only(bottom:2,right:2),
              child: CircleAvatar(radius:8,backgroundColor:Colors.green,),
            ),
          ],
         ),
         SizedBox(width:10),
        Expanded(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
            
            Text("ziad waleed ", maxLines:1,
                   overflow:TextOverflow.ellipsis,
                   style:TextStyle(fontSize: 16,
                   fontWeight: FontWeight.bold
                   ),
                   ),
               Row(
                 children: [
                   Text("انت فين فيه حجز النهارده",
                   maxLines:2,
                   overflow:TextOverflow.ellipsis,
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: CircleAvatar(radius:3,),
                   ),
                   Text("00:00.pm")
                 ],
               )
          ],),
        ),
         Icon(Icons.check_circle_rounded)
        ],
      ),
     
    );
  }
  Widget buildStortItems(){
    return                    Container(
                           width:70,
                          child: Column(
                                      
                            children: [
                             Stack(
                              alignment:AlignmentDirectional.bottomEnd,
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                  ),
                               CircleAvatar(
                                
                                radius: 10,
                                backgroundColor: Colors.white,
                               ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom:2,right:2),
                                  child: CircleAvatar(
                                    
                                    radius: 7,
                                    backgroundColor: Colors.lightGreenAccent,
                                  ),
                                )
                                ],
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                             Padding(
                               padding: const EdgeInsets.only(left:12),
                               child: Text("Ahmed Saad 3mmmmmoad",
                               maxLines:2,
                               overflow: TextOverflow.ellipsis,
                               ),
                             )
                            ],
                          ),
                        );
 
  }