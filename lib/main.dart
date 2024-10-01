import 'package:flutter/material.dart';
import 'package:septi_kuis/pages/LoginPage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp();

  @override
  Widget build (BuildContext){
    return MaterialApp(
      title: "Septi_kuis",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen
      ),
      home: LoginPage(),
    );
  }
}