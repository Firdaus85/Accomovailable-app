import 'package:accomovailable_app/constants/constants.dart';
import 'package:accomovailable_app/screens/home/details/components/homePage.dart';
import 'package:accomovailable_app/screens/home/details/components/home_screen.dart';
import 'package:accomovailable_app/screens/home/details/components/hostel_screen.dart';
import 'package:accomovailable_app/screens/home/details/components/houses.dart';
import 'package:accomovailable_app/screens/sign_in.dart';
import 'package:accomovailable_app/screens/sign_up.dart';
import 'package:accomovailable_app/screens/startScreen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp( MyApp());
}

DatabaseReference usersRef = FirebaseDatabase.instance.ref().child("users");

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Real Estate App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: white
      ),
      home:AnimatedSplashScreen(
          duration: 3000,
          splash: Image.asset(
            "images/logo.png",
          ),
          nextScreen: StartScreen(),
          splashTransition: SplashTransition.scaleTransition,
         splashIconSize: double.maxFinite,
          backgroundColor: Colors.white),
      routes: {
        ResidentialScreen.idScreen:(context) => ResidentialScreen(),
        HostelScreen.idScreen : (context) => HostelScreen(),
        HomePage.idScreen :(context) => HomePage(),
        RegistrationScreen.idScreen:(context) => RegistrationScreen(),
        LoginScreen.idScreen:(context) => LoginScreen(),
        StartScreen.idScreen:(context) => StartScreen()
        //Houses.idScreen:(context) => Houses()
      },
    );
  }
}
