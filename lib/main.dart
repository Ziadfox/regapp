import 'package:flutter/material.dart';
import 'modules/bmi/bmi_calculator.dart';
import 'modules/counter/counter.dart';
import 'modules/item.dart';
import 'modules/massenger/massenger.dart';
import 'modules/register/register_screen.dart';
import 'modules/login/LoginScreen.dart';
import 'modules/users/userScreen.dart';

void main() {
  runApp(MyApp());
  }
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
   home:Items(),
  );
  }
}

