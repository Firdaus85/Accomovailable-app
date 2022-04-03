import 'package:accomovailable_app/constants/constants.dart';
import 'package:accomovailable_app/screens/home/details/components/homePage.dart';
import 'package:accomovailable_app/screens/home/details/components/home_screen.dart';
import 'package:flutter/material.dart';



class CustomAppBarHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: appPadding,
          right: appPadding,
          top: 1 ,
          bottom: appPadding/2
        ),
        child: Container(
          height: size.height * 0.1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(HomePage.idScreen);
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Icon(Icons.arrow_back_rounded,color: darkBlue,),
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
