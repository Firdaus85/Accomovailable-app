import 'package:accomovailable_app/constants/constants.dart';
import 'package:accomovailable_app/data/data.dart';
import 'package:accomovailable_app/models/hostel.dart';

import 'package:flutter/material.dart';


import 'details_screen_hostels.dart';


class Hostels extends StatefulWidget {
  @override
  _HostelsState createState() => _HostelsState();
}

class _HostelsState extends State<Hostels> {
  Widget _buildHostel(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    Hostel hostel = hostelList[index];

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailsScreenHostel(
              hostel: hostel,
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
                                            image: AssetImage(hostel.imageUrl),
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
                                              hostel.name,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            Text(hostel.address),
                                            const SizedBox(height: 5),
                                            Text(hostel.reviews),
                                            const SizedBox(height: 5),
                                            Text(
                                              '\GH₵ ${hostel.price}',
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
