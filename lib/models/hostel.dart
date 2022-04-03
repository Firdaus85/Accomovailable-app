class Hostel {
  String imageUrl;
  String address, reviews, name;
  String description;
  double price ;
  
  int bedRooms;
  int bathRooms;
  int phone;
  double sqFeet;
  int garages;
  int time;
  List<String> moreImagesUrl;
  bool isFav;

  Hostel({
    required this.name,
    required this.imageUrl,
    required this.address,
    required this.description,
    required this.price,
    required this.bathRooms,
    required this.bedRooms,
    required this.sqFeet,
    required this.garages,
    required this.time,
    required this.moreImagesUrl,
    required this.isFav, 
    required this.reviews ,
    required this.phone 
  });
}
