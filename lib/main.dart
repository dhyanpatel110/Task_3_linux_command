import 'terminal.dart';
import 'package:flutter/material.dart';
import 'signin.dart';
import 'signup.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'home.dart';
import 'package:page_transition/page_transition.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(
    MaterialApp(
      home: Container(
        width: double.infinity,
        height: double.infinity,
        child: AnimatedSplashScreen(
            backgroundColor: Colors.black,
            duration: 20,
            splash: Image.asset('assets\image6.jpg'),
            splashIconSize: double.infinity,
            splashTransition: SplashTransition.rotationTransition,
            pageTransitionType: PageTransitionType.topToBottom,
            nextScreen: Home()),
      ),
      routes: {
        "login": (context) => MyLogin(),
        "register": (context) => MyReg(),
        "terminal": (context) => MyApp()
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}
