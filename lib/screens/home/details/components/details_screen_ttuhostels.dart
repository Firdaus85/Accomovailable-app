
import 'package:accomovailable_app/models/ttu.dart';

import 'package:accomovailable_app/screens/home/details/components/components/carousel_images.dart';
import 'package:accomovailable_app/screens/home/details/components/components/custom_app_bar.dart';

import 'package:accomovailable_app/screens/home/details/components/components/ttuhostel_details.dart';
import 'package:accomovailable_app/screens/home/details/components/ttubottom_buttons.dart';
import 'package:flutter/material.dart';


class TtuDetailsScreenHostel extends StatefulWidget {

  final TtuHostel ttuhostel;

  const TtuDetailsScreenHostel({ Key? key, required this.ttuhostel}) : super(key: key);

  @override
  _TtuDetailsScreenHostelState createState() => _TtuDetailsScreenHostelState();
}

class _TtuDetailsScreenHostelState extends State<TtuDetailsScreenHostel> {
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
                  CarouselImages(widget.ttuhostel.moreImagesUrl),
                  CustomAppBar(),
                ],
              ),
              TtuHostelDetails(widget.ttuhostel),
            ],
          ),
          TtuBottomButtonsHostelsDetails(ttuhostel: widget.ttuhostel,),
        ],
      ),
    );
  }
}
