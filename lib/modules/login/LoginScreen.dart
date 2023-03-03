
import 'package:flutter/material.dart';
import 'package:regapp/modules/register/register_screen.dart';
import '../../shared/components/components.dart';
import '../../shared/components/hedaerClipper.dart';
import '../item.dart';

class login_Screen extends StatefulWidget{
  const login_Screen({super.key});

  @override
  State<login_Screen> createState() => _login_ScreenState();
}

class _login_ScreenState extends State<login_Screen> {
  @override
  
  Widget build(BuildContext context)
 
  {
var Email=TextEditingController();
var password=TextEditingController();
var formkey=GlobalKey<FormState>();
bool _obscurePassword = true; 

void _toggleObscurePassword() {
  setState(() {
    _obscurePassword = !_obscurePassword; 
  });
}
bool obscuore=true;
    return Scaffold(
    body:SafeArea(
        child:Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
//start hedear**************************************************************************************
         const headrclipper(
            labelheder: "login",
            flex: 1,colorContainer: Colors.deepPurple,
            fontSize: 40,
            textColor:Colors.white,
          ),
//End hedear**************************************************************************************

//start form******************************************************************************
    Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key:formkey,
            child: Column(
              children: [
                //start Email text form field**************************************************************************************
                Container(
                  child: defaultTextformFild(
                  
                  controller: Email,
                  validator: (value) {
                    if (value!.isEmpty){
                      return "Email must be not Empty";
                    }
                    null;
                  },
                  keyboardType:TextInputType.emailAddress,
                  labelText: "Email",
                   prefixIcon:Icons.email,
                   border:OutlineInputBorder(),
                   focusedBorder: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20),
                    borderSide:BorderSide(
                      color:Colors.deepPurple,
                      width:5, 
                     
                      )
                   ),
                   enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:BorderSide(
                      color:Colors.deepPurple,
                    
                    )
                   )
                   ),
                ),
                
//End Email text form field**************************************************************************************
                SizedBox(height: 20,),
//start password text form field**************************************************************************************
                Container(
                  child: defaultTextformFild(
                  controller: password,
                  
                  keyboardType:TextInputType.visiblePassword,
                  labelText: "password",
                   prefixIcon:Icons.lock,
                   suffixIcon: _obscurePassword ? Icons.visibility : Icons.visibility_off,
                      onSuffixIconPressed: _toggleObscurePassword, 
                      obscureText: _obscurePassword,
                    
                    
                   border:OutlineInputBorder(),
                   focusedBorder: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20),
                    borderSide:BorderSide(
                      color:Colors.deepPurple,
                      width:5, 
                      )
                   ),
                   enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:BorderSide(
                      color:Colors.deepPurple,
                    
                    )
                   ),
                   validator: (value) {
                    if (value!.isEmpty){
                      return "passowrd can not be Empty";}null;},
                  
                   ),
                ),
                
 //End password text form field**************************************************************************************
                 SizedBox(height:20,) ,
//start bottun******************************************************************************             
                defaultbutton(color: Colors.deepPurple,
                onPressed: (){
                 if (formkey.currentState!.validate()){
                   Navigator.push(context,
                  MaterialPageRoute(
                    builder:(context)
                    =>Items()
                    )
                    );
                 }
                 null;
                   
                },
                 widgetonbutton:Text("Login" ,
                 style: TextStyle(color:Colors.white),),
                 borderRadius:BorderRadius.circular(10) 
                 ),
                 SizedBox(height:20,) ,
                  defaultbutton(color: Colors.deepPurple,
                  onPressed: (){
                   Navigator.push(context,MaterialPageRoute(builder: (context)=>RegisterScreen()) );
                  },
                   widgetonbutton:Text("Register Now"
                   , style: TextStyle(color:Colors.white),),
                   borderRadius:BorderRadius.circular(10) 
                   )
          //End bottun******************************************************************************            
              ],
            ),
          ),
        ),
      ),
    ),
//End form******************************************************************************  
                 ],

          )

        ),
    );
  }
}