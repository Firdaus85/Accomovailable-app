import 'package:accomovailable_app/screens/home/details/components/components/custom_app_bar.dart';
import 'package:accomovailable_app/screens/home/details/components/custom_app_bar.dart';
import 'package:accomovailable_app/screens/home/details/components/hostels.dart';
import 'package:accomovailable_app/screens/home/details/components/houses.dart';
import 'package:accomovailable_app/screens/home/details/components/tabScreen.dart';
import 'package:flutter/material.dart';

class ResidentialScreen extends StatelessWidget {


   static const String idScreen = "residentialScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              //Expanded(child: CustomAppBarHome()),
              //Categories(),
              //Expanded(child: TabScreen()),
              CustomAppBarHome(),
              //Hotels(),
              Houses()
            ],
          ),
          
          //BottomButtonsHome(),
        ],
      ),
    );
  }
}
