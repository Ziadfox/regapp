import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget{
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
 //varibe for text box data ==================================================
var fullName=TextEditingController();

var Phone=TextEditingController();

var Email=TextEditingController();

var password=TextEditingController();

var confirmPassword=TextEditingController();

bool _obscuore=true; 
bool _obscuoreConfirm=true;

 //===========================================================================
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(

        child:Column(
          children: [
//Start haedr %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

            Expanded(
              flex: 1,
              child:Container(  
                child: ClipPath(
                  clipper: headclipper(),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        color: Colors.deepPurple,
                        
                      ),
                      Text(
                        "Register",
                        style: TextStyle(color: Colors.white,fontSize:40,),
                        ),
                    ],
                  ),
                ),
              ),
            ),
//End haedr %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
// Start form $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
            Expanded(flex: 3,
            child:Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 15,),
//Start text box full name ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
                    TextFormField(
                      controller: fullName,
                      decoration:InputDecoration(
                        labelText:"Full Name",
                        labelStyle: TextStyle(color: Colors.deepPurpleAccent),
                       border: OutlineInputBorder(),
                       
              
                       //when text in box label
                       focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Colors.deepPurple,width: 5,),
                        borderRadius:
                         BorderRadius.circular(20),
              
                         ),
                         
                      //when text not in box label
                       enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                         borderSide:BorderSide(
                          color:Colors.deepPurple,
                          width: 2,
                          ),
                         
                        ),
              
                      prefixIcon: Icon(Icons.person,),
                      
                      
                      ),
                      onChanged: (value){
                        print(value);
                      },
                      onFieldSubmitted: (value){
                        print(value);
                      },
                      
                    ),
//End text box full name ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
                   SizedBox(height: 15,),
//End Text box Phone ******************************************************************
                   TextFormField(
                    controller: Phone,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Phone",
                      border: OutlineInputBorder(),
                      prefixIcon:Icon(Icons.phone),
                      //when focused in label 
                      focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                          color:Colors.deepPurple,
                          width: 5,
                          ),
                          borderRadius:BorderRadius.circular(20),
                      ),
                      // when  not focused in label
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepPurple,
                          width:2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                     onChanged: (value){
                        print(value);
                      },
                      onFieldSubmitted: (value){
                        print(value);
                      },
                   ),
//End Text box Phone ******************************************************************
                    SizedBox(height:15,),
//End text box email @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                    
                  
                    TextFormField(
                    
                      keyboardType: TextInputType.emailAddress,
                      controller: Email,
                      decoration: InputDecoration(helperText: "you must enter a coruect email",
                       labelText: "Email",
                       border: OutlineInputBorder(),
                       //when text in box label
                       focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Colors.deepPurple,width: 5,),
                        borderRadius:
                         BorderRadius.circular(20),
              
                         ),
                         
                      //when text not in box label
                       enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                         borderSide:BorderSide(
                          color:Colors.deepPurple,
                          width:2,
                          ),
                         
                        ),
                       prefixIcon: Icon(Icons.email), 
                      ),
                      onChanged:(value){
                        print(value);
                      },
                      onFieldSubmitted: (value){
                        print(value);
                      },
                    ),
//End text box email @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                    
                    SizedBox(height: 15,),
 //Start text box password ############################################################
              
                    TextFormField(
                      keyboardType:TextInputType.visiblePassword,
                     obscureText:_obscuore,
                      controller: password,
                      
                      decoration: InputDecoration(
          
                        labelText: "Password",
                        border: OutlineInputBorder(),
                        //when text in box lable
                        focusedBorder:OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepPurple,
                            width: 5,
                            ),
                          borderRadius:BorderRadius.circular(20),  
                        ),
              
                        // when text not in to box lable
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepPurpleAccent,
                            width: 2,
                          
                          ),
                          
                          borderRadius:BorderRadius.circular(10),
                        ),
                        prefixIcon:Icon(Icons.lock),
                       suffixIcon:IconButton(
                       onPressed: () {
                        setState ((){
                           _obscuore = ! _obscuore;});
                       },
                       icon: Icon(_obscuore?Icons.visibility_off: Icons.visibility),
                       ), 
                      ),
                     onChanged: (valus){
                      print(valus);
                     },
                    ),
//End text box password #######################################################                    
                    SizedBox(height: 15,),
// stert confirm Password =====================================================
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText:_obscuoreConfirm,
                      controller: confirmPassword,
                      decoration:InputDecoration(
                        labelText:"Confirm Password",
                        border: OutlineInputBorder(),
                        prefixIcon:Icon(Icons.key),
                        suffixIcon:IconButton(onPressed:(){
                          setState(() {
                            _obscuoreConfirm = !_obscuoreConfirm;
                          });
                        },
                        icon:Icon(_obscuoreConfirm ?Icons.visibility_off:Icons.visibility)
                        ),
                        //when focus in label
                        focusedBorder: OutlineInputBorder(
                          borderSide:BorderSide(
                            color: Colors.deepPurple,
                            width:5,
                          ),
                          borderRadius:BorderRadius.circular(20),
                        ),
                        //when not focus in label
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:Colors.deepPurple,
                            width:2,
                            ),
                          borderRadius:BorderRadius.circular(10),
                        ),
                        
                      ),
                       onChanged: (value){
                        print(value);
                      },
                      onFieldSubmitted: (value){
                        print(value);
                      },
                    ),
// End  text box confirm Password =====================================================
                  SizedBox(height:15),
//start register button+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                  Container(
                 
                    width:double.infinity,
                    decoration: BoxDecoration(
                      color:Colors.deepPurple,
                     borderRadius:BorderRadius.circular(10),
                      ),
                    child:
                   MaterialButton(
                    onPressed:(){
                      print(fullName.text);
                      print(Phone.text);
                      print(Email.text);
                      print(password.text);
                      print(confirmPassword.text);
                    },
                    child:Text("Register",
                    style: TextStyle(color:Colors.white),),
                    ),
                    
                    ),
//End register button+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//Start login button *********************************************************                  
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        
                        
                      ),
                      clipBehavior:Clip.antiAliasWithSaveLayer,
                      child:OutlinedButton (onPressed:(){},
                      child: Text("Login"),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.deepPurple,width:2,),
                         foregroundColor: Colors.deepPurple,
                      ),
                      
                      ),
                      
                    
                    )
//Start login button *********************************************************                  

                  ],
                ),
              ),
            ),
            ),
          ],
        ),
        ),
         
        
      
    );
  }
}
class headclipper extends CustomClipper <Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path.lineTo(0 * _xScaling,-3.194725 * _yScaling);
    path.cubicTo(0 * _xScaling,-3.194725 * _yScaling,0 * _xScaling,753.6388609999999 * _yScaling,0 * _xScaling,753.6388609999999 * _yScaling,);
    path.cubicTo(95.921754 * _xScaling,504.874852 * _yScaling,196.0248 * _xScaling,939.4976529999999 * _yScaling,496.753247 * _xScaling,756.9438049999999 * _yScaling,);
    path.cubicTo(496.753247 * _xScaling,756.9438049999999 * _yScaling,500 * _xScaling,1.7626970000000002 * _yScaling,500 * _xScaling,1.7626970000000002 * _yScaling,);
    path.cubicTo(487.365494 * _xScaling,-7.170039999999999 * _yScaling,226.59491300000005 * _xScaling,-1.4260249999999997 * _yScaling,1.6209256159527285e-14 * _xScaling,-3.194726 * _yScaling,);
    path.cubicTo(1.6209256159527285e-14 * _xScaling,-3.194726 * _yScaling,0 * _xScaling,-3.194725 * _yScaling,0 * _xScaling,-3.194725 * _yScaling,);
    path.cubicTo(0 * _xScaling,-3.194725 * _yScaling,400 * _xScaling,1.7626970000000002 * _yScaling,400 * _xScaling,1.7626970000000002 * _yScaling,);
    path.cubicTo(389.892395 * _xScaling,-7.170039999999999 * _yScaling,181.27593100000004 * _xScaling,-1.4260249999999997 * _yScaling,1.6209256159527285e-14 * _xScaling,-3.194726 * _yScaling,);
    path.cubicTo(1.6209256159527285e-14 * _xScaling,-3.194726 * _yScaling,0 * _xScaling,-3.194725 * _yScaling,0 * _xScaling,-3.194725 * _yScaling,);
    return path;
  }
  


  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}