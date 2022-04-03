import 'package:accomovailable_app/constants/constants.dart';

import 'package:accomovailable_app/models/ttu.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class TtuBottomButtonsHostelsDetails extends StatelessWidget {
  final TtuHostel ttuhostel;

  const TtuBottomButtonsHostelsDetails({Key? key, required this.ttuhostel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    

    return Padding(
      padding: const EdgeInsets.only(bottom: appPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         
          Container(
            width: size.width * 0.4,
            height: 60,
            decoration: BoxDecoration(
                color: darkBlue,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: darkBlue.withOpacity(0.6),
                      offset: const Offset(0, 10),
                      blurRadius: 10)
                ]),
            child: ElevatedButton(
              onPressed: () {
                launch('tel://0${ttuhostel.phone}');
              },
              style: ElevatedButton.styleFrom(
                      primary: darkBlue,
                      onPrimary: Colors.white,
                      minimumSize: Size(double.infinity, 50)),
              child: Text(
                      ' Call',
                      style: TextStyle(
                        color: white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
              
            ),
          ),

         
        ],
      ),
    );
  }
}
