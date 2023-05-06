import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_project/main.dart';

import 'my_Contacts.dart';
import 'my_Profile_Screen.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  static const String KEYLOGIN="Login";
  void initState() {
    super.initState();
    whereToGo();

  }
  //@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text('BMI',style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
        ),
      ),

    );
  }

  void whereToGo() async {

    var  sharedpref=await SharedPreferences.getInstance();
    var isLoggedIn=sharedpref.getBool(KEYLOGIN);


    Timer(Duration(seconds: 5),(){
      if(isLoggedIn!=null){
        if(isLoggedIn){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashBoard  (),));
        }
        else{
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfileScreen  (),));
        }
      }
      else{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfileScreen  (),));
      }

    });
  }
}