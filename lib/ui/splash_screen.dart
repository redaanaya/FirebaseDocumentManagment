import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import '../firebase_services/splash_services.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({Key? key}): super(key:key);

  @override
  State<SplashScreen> createState() =>
    _SplashScreenState();
  }

  class _SplashScreenState extends State<SplashScreen> {
    SplashServices _splashServivce=SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _splashServivce.isLogin(context);
  }
    @override
    Widget build(BuildContext context) {
     return Scaffold(
       body: Center(
         child: Text('Firebase Tutorials',style: TextStyle(fontSize: 30))
       )
     );
    }
  
  }

  


