import 'package:flutter/material.dart';
Widget defaultbutton({
required Color color,
required Function() onPressed,
required Widget widgetonbutton,
BorderRadiusGeometry?borderRadius,


})

=>Container(
                   
                      width:double.infinity,
                      decoration: BoxDecoration(
                        color:color,
                       borderRadius:borderRadius,
                        ),
                      child:
                     MaterialButton(
                      onPressed:onPressed,
                      child:widgetonbutton,
                      ),
                      
                      );

Widget defaultTextformFild ({
  required TextEditingController controller,
  required TextInputType keyboardType,
  required IconData prefixIcon,
  String? labelText,
  InputBorder? border,
  InputBorder?focusedBorder,
  InputBorder?enabledBorder,
  Function(String)? onChanged,
  Function(String)? onFieldSubmitted,
  String? Function(String?)? validator,
  IconData?suffixIcon,
  bool obscureText = false,
  String?helperText,
  Function()? onSuffixIconPressed,
  
 
  
})




=> TextFormField(
                        keyboardType: keyboardType,



                        obscureText:obscureText,



                        controller: controller,



                        decoration: InputDecoration(

                        helperText:helperText,



                         labelText:labelText,



                         border: border,



                         //when text in box label



                         focusedBorder:focusedBorder,  



                        //when text not in box label



                         enabledBorder:enabledBorder,



                         prefixIcon: Icon(prefixIcon),
            suffixIcon: suffixIcon != null
          ? IconButton(
              icon: Icon(suffixIcon),
              onPressed: onSuffixIconPressed, 
            )
          : null,
    ),


                        


                        
                        
                        validator: validator,
                        onChanged:onChanged,



                        



                        onFieldSubmitted:onFieldSubmitted,



                        



                      );
                      
                     