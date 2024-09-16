import 'package:ch4_lec6/screens/firsttask.dart';
import 'package:ch4_lec6/screens/fsecond.dart';
import 'package:ch4_lec6/screens/homepage.dart';
import 'package:ch4_lec6/screens/secondpage.dart';
import 'package:ch4_lec6/screens/thirdpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context){
          return Homepage();
        },
        "first":(context){
          return FirstPage();
        },
        "fsecond":(context){
          return Fsecond();
        },
        "second":(context){
          return SecondPage();
        },
        "third":(context){
          return ThirdPage();
        },
      },
    ),
  );
}