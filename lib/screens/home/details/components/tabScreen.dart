import 'package:accomovailable_app/constants/constants.dart';
import 'package:accomovailable_app/screens/home/details/components/hostels.dart';
import 'package:accomovailable_app/screens/home/details/components/houses.dart';
import 'package:accomovailable_app/screens/home/details/components/ttuhostels.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  

    return DefaultTabController(
      length: 2,
      child: Scaffold(
       

        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
              horizontal: appPadding, vertical: appPadding / 2),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(158, 119, 119, 119),
                  ),
                  child: TabBar(
                    
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), color: darkBlue),
                    tabs: [
                      Tab(
                        child: Container(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "University for development Studies",
                             
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Tamale technical university"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              
                Expanded(
                  child: SizedBox(
                    child: TabBarView(
                      children: [
                      Hostels(),
                      TtuHostels(),
                    ]),
                  ),
                ),
              
            ],
          ),
        ),
      ),
    );
  }
}
