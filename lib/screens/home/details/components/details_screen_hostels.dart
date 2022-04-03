import 'package:accomovailable_app/models/hostel.dart';
import 'package:accomovailable_app/screens/home/details/components/bottom_buttons.dart';
import 'package:accomovailable_app/screens/home/details/components/components/carousel_images.dart';
import 'package:accomovailable_app/screens/home/details/components/components/custom_app_bar.dart';
import 'package:accomovailable_app/screens/home/details/components/components/hostel_details.dart';
import 'package:flutter/material.dart';


class DetailsScreenHostel extends StatefulWidget {

  final Hostel hostel;

  const DetailsScreenHostel({ Key? key, required this.hostel}) : super(key: key);

  @override
  _DetailsScreenHostelState createState() => _DetailsScreenHostelState();
}

class _DetailsScreenHostelState extends State<DetailsScreenHostel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Stack(
                children: [
                  CarouselImages(widget.hostel.moreImagesUrl),
                  CustomAppBar(),
                ],
              ),
              HostelDetails(widget.hostel),
            ],
          ),
          BottomButtonsHostelsDetails(hostel: widget.hostel,),
        ],
      ),
    );
  }
}
