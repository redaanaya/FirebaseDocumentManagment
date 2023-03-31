import 'dart:async';


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebaseweb/posts/post_Screen.dart';

import '../ui/auth/login_screen.dart';

class SplashServices {

  void isLogin(BuildContext context) {

  final auth=FirebaseAuth.instance;
  final user=auth.currentUser;
  if(user!=null)
    {
      Timer(const Duration(seconds:3),
              ()=>Navigator.push(
              context, MaterialPageRoute(builder: (context) => PostScreen()))
      );
    }
  else
    {
      Timer(const Duration(seconds:3),
              ()=>Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen()))
      );
    }
    // Timer.periodic(const Duration(seconds: 3), (timer) {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => LoginScreen()));
    // });

  }
}