import 'package:accomovailable_app/screens/sign_in.dart';
import 'package:flutter/material.dart';


class StartScreen extends StatelessWidget {
  const StartScreen({ Key? key }) : super(key: key);

  static const String idScreen = "startScreen";

  @override
  Widget build(BuildContext context) {
     return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/splash.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.dstATop)),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 65,
          top: 45,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 65.0,
            ),
            Text(
              "Are you looking for a place to rent?",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  decoration: TextDecoration.none),
            ),
            SizedBox(
              height: 32.0,
            ),
            Text(
              "Find your place easily",
              style: TextStyle(
                  color: Colors.white,fontSize: 20, decoration: TextDecoration.none),
            ),
            Text(
              "Anywhere you want with us",
              style: TextStyle(
                  color: Colors.white,fontSize: 20, decoration: TextDecoration.none),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, LoginScreen.idScreen, (route) => false);
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                  minimumSize: Size(double.infinity, 50)),
              child: Text(
                "Get Started",
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}