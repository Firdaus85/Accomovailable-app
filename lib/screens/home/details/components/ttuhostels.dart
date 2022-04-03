import 'package:accomovailable_app/constants/constants.dart';
import 'package:accomovailable_app/data/data.dart';
import 'package:accomovailable_app/models/hostel.dart';
import 'package:accomovailable_app/models/ttu.dart';
import 'package:accomovailable_app/screens/home/details/components/details_screen_ttuhostels.dart';

import 'package:flutter/material.dart';


import 'details_screen_hostels.dart';


class TtuHostels extends StatefulWidget {
  @override
  _TtuHostelsState createState() => _TtuHostelsState();
}

class _TtuHostelsState extends State<TtuHostels> {
  Widget _buildHostel(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    TtuHostel ttuhostel = ttuhostelList[index];

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => TtuDetailsScreenHostel(
              ttuhostel: ttuhostel,
              key: null,
            ),
          ),
        );
      },
      


      child: SingleChildScrollView(
        child: Column(
          children: [
             Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 10),
                    
                  ),
                   Padding(
                     padding: EdgeInsets.symmetric(
              horizontal: appPadding, vertical: appPadding / 5),
                     child: Container(
                                height: size.height * .13,
                                width: size.width,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 240, 240, 240),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: size.height,
                                      width: size.width * .28,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          image: DecorationImage(
                                            image: AssetImage(ttuhostel.imageUrl),
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 10, 10, 2),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              ttuhostel.name,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            Text(ttuhostel.address),
                                            const SizedBox(height: 5),
                                            Text(ttuhostel.reviews),
                                            const SizedBox(height: 5),
                                            Text(
                                              '\GH₵ ${ttuhostel.price}/year',
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ))
          ],
        )),
                   )]),
      ));


    
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: hostelList.length,
        itemBuilder: (context, index) {
          
          return _buildHostel(context, index);
        },
      ),
    );
  }
}
