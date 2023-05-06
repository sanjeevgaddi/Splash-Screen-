import 'package:flutter/material.dart';
import 'package:splash_project/my_Contacts.dart';
import 'package:splash_project/splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  SplashScreen(),
    );
  }
}

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashBoard'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('My Contacts',style: TextStyle(fontSize: 25),),
              SizedBox(height: 11,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyContacts(),));
              }, child: Text('Show Me',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
            ],
          ),
        ),
      )
    );
  }
}
