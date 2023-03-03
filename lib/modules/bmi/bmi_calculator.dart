import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'bmi_rausalt.dart';

class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}
int Age =1;
int Weight =1;
bool isMale=true;
double height =120;
class _bmiState extends State<bmi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("BMI CALCULATOR")),
      ),
      body: Container(
        width: double.infinity,
   
          color: Colors.black,
       
        child: Column(
          children: [
//start container male or female **********************************************************************************************************************************
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(children: [
 //start male**********************************************************************************************************************************
                  
                    Expanded(
                      child: GestureDetector(
                        onTap:(){
                          setState(() {
                          isMale=true;
                        });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:isMale?Colors.blue:Colors.amber,
                            borderRadius:BorderRadius.circular(10),
                          ),
                         
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image:AssetImage('assets/images/male.png'),
                                height:60,
                                width: 60,
                              ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Text("male",
                                 style: TextStyle(
                                  fontSize:20,
                                  fontWeight:FontWeight.bold
                                  ),
                                 ),
                               ),
                            ],
                          )
                      
                        ),
                      ),
                    ),
 //end male**********************************************************************************************************************************

                    SizedBox(width: 20,),
 //start female**********************************************************************************************************************************

                     Expanded(
                       child: GestureDetector(
                        onTap:(){
                          setState(() {
                            isMale=false;
                          });
                        },
                         child: Container(
                          decoration: BoxDecoration(
                            color:isMale? Colors.amber:Colors.pink.shade100,
                          borderRadius:BorderRadius.circular(10),
                          
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image:AssetImage('assets/images/female.png'),
                              height: 40,
                              width: 40,
                              
                               ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("female",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                       
                            ],
                          ),
                                     ),
                       ),
                     )
 //End female**********************************************************************************************************************************
                  
                  ],),
                ),
              ),
            ),

//end container male or female **********************************************************************************************************************************

//start container height **********************************************************************************************************************************

            Expanded(child:
             Padding(
               padding: const EdgeInsets.all(10),
               child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:Colors.grey,
                ),
                
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Text("HEIGHT"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      
                      children: [
                        Text("${height.round()}",
                        style: TextStyle(
                          fontSize:50,
                          fontWeight:FontWeight.bold
                          
                        ),
                        ),
                        Text('cm')
                     
                      ],
                    ),
                  Slider(value:height,max: 220,min:80, onChanged:(value){
                    setState(() {
                      height=value;
                    });
                  })
                  ],
                ),
                ),
             ),
              
            
            ),
//end container height **********************************************************************************************************************************
//start container Age & weight**********************************************************************************************************************************
       
            Expanded(child: Container(
              width: double.infinity,
              child:Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
              
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius:BorderRadius.circular(10)
                    ),
                      
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                         
                           children: [
                            Text("Weight",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            Text("$Weight",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight:FontWeight.w900,
                            ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton.small(onPressed: (){
                                  setState(() {
                                    Weight--;
                                  });
                                  
                                },child:Text("-"),heroTag:'Weight--' ,),
                                FloatingActionButton.small(onPressed:() {
                                  setState(() {
                                    Weight++;
                                  });
                                },child: Text("+"),heroTag:'Weight++')
                              ],
                            ),
                                          
                           ],
                        
                          ),
                      ),
                    ),
                  ),
                 
                  SizedBox(width: 10,),
                 Expanded(
                   child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius:BorderRadius.circular(10)
                    ),
                     child: Padding(
                       padding: const EdgeInsets.all(10),
                       child: Column(
                        children: [
                          Text("Age",
                          style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
                          ),
                          Text("$Age",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight:FontWeight.w900
                          ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton.small(onPressed: (){
                                setState(() {
                                  Age--;
                                });
                              },child: Text("-"),heroTag:'Age--'),
                              FloatingActionButton.small(onPressed: (){
                                setState(() {
                                  Age++;
                                });
                              },child: Text("+"),heroTag:'Age++')
                            ],
                          )
                        ],
                       ),
                     ),
                   ),
                 )
                    
                    
                ],
              ),
            ))),
//End container Age & weight**********************************************************************************************************************************

//start container calculat**********************************************************************************************************************************
            
            Container(
              width: double.infinity,
              decoration: 
              BoxDecoration(
                color:Colors.blue,
                borderRadius: BorderRadius.circular(10)
                ),
              child: TextButton(onPressed: (){
                double rusalt =Weight/pow(height/100,2);
                setState(() {
                  Navigator.push(context,
                  MaterialPageRoute(builder:(Context)=>bmiRusalet(
                    isMale:isMale,
                    Age: Age,
                    rusalt: rusalt.round(),
                  )),
                  );
                });
              }, child:Text(
                "calculat",
              style: TextStyle(color:Colors.white,fontSize:20),
              ))),
//end container calculat**********************************************************************************************************************************

          ],
          
        ),
      ),
    );
  }
}