import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter2/screens/programer_list.dart';
import 'package:flutter2/screens/splash_screen.dart';

void main(){
  runApp(MaterialApp(
    //home: ProgramerList(),
    home: SplashScreen(),
    theme: ThemeData(
      primaryColor: Color(0xffee6933),

    ),
  ),
  );
}