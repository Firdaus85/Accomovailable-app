import 'package:accomovailable_app/screens/home/details/components/custom_app_bar.dart';
import 'package:accomovailable_app/screens/home/details/components/hostels.dart';
import 'package:accomovailable_app/screens/home/details/components/tabScreen.dart';
import 'package:flutter/material.dart';


class HostelScreen extends StatelessWidget {
  const HostelScreen({ Key? key }) : super(key: key);

  static const String idScreen = "hostelScreen";

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Color.fromARGB(255, 255, 255, 255),
       //appBar:AppBar(backgroundColor: Colors.green,),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              CustomAppBarHome(),
              Expanded(child: TabScreen()),
              //TabScreen(),
              //Hostels()
            ],
          ),
          
          //BottomButtonsHome(),
        ],
      ),
    );
  }
}