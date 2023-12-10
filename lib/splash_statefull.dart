import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project/hello.dart';
import 'package:flutter_project/login_page.dart';
import 'package:flutter_project/statefull_login.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(
    home: splash2(),
  ));
}

class splash2 extends StatefulWidget{
  @override
  State<splash2> createState()  => _splash2State();
}
class _splash2State extends State<splash2>{
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => hello()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child:

        Lottie.asset("assets/anim/anim1.json",height: 55,width: 100)),
      // Lottie.network("https://lottie.host/56100a08-244e-46eb-9b6c-12a03a024ed8/sEuik1sYBI.json"))
    );
  }
  }