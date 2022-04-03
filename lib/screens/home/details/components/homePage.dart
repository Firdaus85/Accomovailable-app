import 'package:accomovailable_app/screens/home/details/components/home_screen.dart';
import 'package:accomovailable_app/screens/home/details/components/hostel_screen.dart';
import 'package:accomovailable_app/screens/home/details/components/houses.dart';
import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  static const String idScreen = "homePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24,),
            Text(
                  'What are you',
                  style: TextStyle(
                    color: Color.fromARGB(255, 26, 25, 25),
                    fontSize: 24,
                    fontWeight: FontWeight.w800
                  ),
                ),
                Text(
                  'looking for?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w800
                  ),
                ),
        
              Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                      child: SizedBox(
                        height: 45,
                        child: TextField(
                            decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Search Category, or near you',
                          suffixIcon: Icon(
                            Icons.search_outlined,
                            color: Colors.grey,
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          focusedBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        )),
                      )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Ink.image(
                        image: AssetImage("images/house1.jpeg"),
                        height: 240,
                        fit: BoxFit.cover,
                        child: InkWell(
                          onTap: (){
                            Navigator.pushNamedAndRemoveUntil(
                          context, ResidentialScreen.idScreen, (route) => false);
                          },
                        ),
                      ),
                      Text(
                        "Residential",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      ),
                      
                    
                      
                       
                    ],
                    
                  ),
                  
                ),
              ),
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Ink.image(
                        image: AssetImage("images/indoor1.jpg"),
                        height: 240,
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
                        child: InkWell(
                          onTap: (){
                            Navigator.pushNamedAndRemoveUntil(
                          context, HostelScreen.idScreen, (route) => false);
                          },
                        ),
                      ),
                      Text(
                        "Student Hostels",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      ),
                      
                    
                      
                       
                    ],
                    
                  ),
                  
              ),
               )
            ],
          ),
        ),
      ),
    );
  }
}