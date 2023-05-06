import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_project/main.dart';
import 'package:splash_project/splash_Screen.dart';

class ProfileScreen extends StatelessWidget {
  var emailText = TextEditingController();
  var passText = TextEditingController();



  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Text('Login Page'),
        ),
        body: Center(
            child: Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Text(Icon(Icons.person,color: Colors.blue,) as String,),
                    TextField(
                      controller: emailText,
                      decoration: InputDecoration(
                          hintText: 'Enter email address',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(
                              color: Colors.orange,
                              width: 3,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 3,
                              )
                          ),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                color: Colors.green,
                                width: 3,
                              )
                          ),
                          //suffix:  Text('sanjeev gaddi'),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.remove_red_eye,color: Colors.orange,),
                            onPressed: () {
                            },
                          ),
                          prefixIcon: Icon(Icons.email,color: Colors.orange,)
                      ),
                    ),
                    Container(
                      height: 11,
                    ),
                    TextField(
                      controller: passText,
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        hintText: 'Enter the Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: BorderSide(
                            color: Colors.orange,
                            width: 3,
                          ),
                        ),
                        prefix: Icon(Icons.key,color: Colors.blue,),
                      ),
                    ),
                    ElevatedButton(onPressed: () async {
                      String uEmail = emailText.text.toString();
                      String uPass = passText.text;

                      var  sharedpref=await SharedPreferences.getInstance();
                      var KEYLOGIN="login";
                      var isLoggedIn=sharedpref.setBool(SplashScreenState.KEYLOGIN,true);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard(),));


                    },

                        child: Text(
                            'login'
                        ))

                  ],
                ))
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SplashScreenState {
  static const String KEYLOGIN="Login";
}






