import 'package:flutter/material.dart';

class NavigationItem {

  IconData iconData;

  NavigationItem(this.iconData);

}

List<NavigationItem> getNavigationItemList(){
  return <NavigationItem>[
    NavigationItem(Icons.home),
    NavigationItem(Icons.calendar_today),
    NavigationItem(Icons.notifications),
    NavigationItem(Icons.person),
  ];
}

class Car {

  String brand;
  String model;
  double price;
  String condition;
  String rating;
  List<String> images;

  Car(this.brand,  this.model, this.price, this.condition, this.rating, this.images);

}

List<Car> getCarList(){
  return <Car>[
    Car(
      "AUDI",
      "A8",
      4000,
      "weekly",
      "4.0",
      [
        "assets/images/Audi_a80.png",
        "assets/images/Audi_a81.png",
      ],
    ),
    Car(
      "BMW",
      "M8",
      4500,
      "Weekly",
      "4.0",
      [
        "assets/images/BMWM81.jpg",
      ],
    ),
    Car(
      "Land Rover",
      "Discovery",
      2580,
      "Weekly",
      "4.0",
      [
        "assets/images/land_rover_0.png",
        "assets/images/land_rover_1.png",
        "assets/images/land_rover_2.png",
      ],
    ),
    Car(
      "Audi",
      "Rs7",
      4000,
      "weekly",
      "4.0",
      [
        "assets/images/Audi_rs7.jpg",
        "assets/images/Audi_rs71.jpg",
      ],
    ),
    Car(
      "Hyundai",
      "Verna",
      2300,
      "Weekly",
      "4.0",
      [
        "assets/images/HYVerna.jpg",
      ],
    ),
    Car(
      "Alfa Romeo",
      "C4",
      3580,
      "Monthly",
      "4.0",
      [
        "assets/images/alfa_romeo_c4_0.png",
      ],
    ),
    Car(
      "Honda",
      "Amaze",
      2500,
      "Weekly",
      "4.0",
      [
        "assets/images/HAmaze.jpg",
      ],
    ),
    Car(
      "Nissan",
      "GTR",
      1100,
      "Daily",
      "4.0",
      [
        "assets/images/nissan_gtr_0.png",
        "assets/images/nissan_gtr_1.png",
        "assets/images/nissan_gtr_2.png",
        "assets/images/nissan_gtr_3.png",
      ],
    ),
    Car(
      "Acura",
      "MDX 2020",
      2200,
      "Monthly",
      "4.0",
      [
        "assets/images/acura_0.png",
        "assets/images/acura_1.png",
        "assets/images/acura_2.png",
      ],
    ),
    Car(
      "Honda",
      "City",
      2500,
      "Weekly",
      "4.0",
      [
        "assets/images/HCity.jpg",
      ],
    ),
    Car(
      "AUDI",
      "Q8",
      4500,
      "weekly",
      "4.0",
      [
        "assets/images/Q80.jpg",
        "assets/images/Q81.jpg",
      ],
    ),
    Car(
      "Hyundai",
      "Elantra",
      2300,
      "Weekly",
      "4.0",
      [
        "assets/images/HyElantra.jpg",
      ],
    ),
    Car(
      "Honda",
      "Hr-V",
      2500,
      "Weekly",
      "4.0",
      [
        "assets/images/HHr-V.jpg",
      ],
    ),
    Car(
      "Ford",
      "EcoSport",
      2500,
      "Weekly",
      "4.0",
      [
        "assets/images/FEco.jpg",
      ],
    ),
    Car(
      "Maruti",
      "XL6",
      2500,
      "Weekly",
      "4.0",
      [
        "assets/images/MXL6.jpg",
      ],
    ),
    Car(
      "Skoda",
      "Octavia",
      2500,
      "Weekly",
      "4.0",
      [
        "assets/images/SkOct.jpg",
      ],
    ),
    Car(
      "BMW",
      "BMW 6 Series",
      4300,
      "Weekly",
      "4.0",
      [
        "assets/images/BMW6S.jpg",
      ],
    ),
    Car(
      "Tata",
      "Tigor",
      1800,
      "Weekly",
      "4.0",
      [
        "assets/images/TTigor.jpg",
      ],
    ),
    Car(
      "Maruti",
      "Baleno",
      2500,
      "Weekly",
      "4.0",
      [
        "assets/images/MBaleno.jpg",
      ],
    ),
    Car(
      "Mini Cooper",
      "Mini Cooper Countryman",
      2300,
      "Weekly",
      "4.0",
      [
        "assets/images/MiniCoopCountry.jpg",
      ],
    ),
    Car(
      "Hyundai",
      "Creta",
      2300,
      "Weekly",
      "4.0",
      [
        "assets/images/HyCreta.jpg",
      ],
    ),
    Car(
      "Ford",
      "Endeavour",
      2500,
      "Weekly",
      "4.0",
      [
        "assets/images/FEnd.jpg",
      ],
    ),
    Car(
      "Tata",
      "Altroz",
      2400,
      "Weekly",
      "4.0",
      [
        "assets/images/TAltroz.jpg",
      ],
    ),
    Car(
      "Maruti",
      "Ertigo",
      2500,
      "Weekly",
      "4.0",
      [
        "assets/images/MErtigo.jpg",
      ],
    ),
    Car(
      "Hyundai",
      "Tuscon",
      2400,
      "Weekly",
      "4.3",
      [
        "assets/images/Hy_Tuscon.jpg",
      ],
    ),
    Car(
      "Tata",
      "Nexon EV",
      2400,
      "Weekly",
      "4.0",
      [
        "assets/images/TNexonEV0.jpg",
        "assets/images/TNexonEV1.jpg",
      ],
    ),
    Car(
      "Porsche",
      "911",
      2400,
      "Weekly",
      "4.0",
      [
        "assets/images/Porsche9111.jpg",
        "assets/images/Porsche9112.jpg",
      ],
    ),
    Car(
      "Ford",
      "Figo",
      2500,
      "Weekly",
      "4.0",
      [
        "assets/images/FFigo.jpg",
      ],
    ),
    Car(
      "Honda",
      "Er-V",
      2500,
      "Weekly",
      "4.0",
      [
        "assets/images/HEr-V.jpg",
      ],
    ),
    Car(
      "Maruti",
      "Omni",
      2500,
      "Weekly",
      "4.0",
      [
        "assets/images/MOmni.jpg",
      ],
    ),
    Car(
      "Tata",
      "Safari",
      3500,
      "Weekly",
      "4.0",
      [
        "assets/images/Tsafari.jpg",
      ],
    ),
    Car(
      "Mini Cooper",
      "Mini Cooper Convertible",
      2300,
      "Weekly",
      "4.0",
      [
        "assets/images/MiniCoop3Con.jpg",
      ],
    ),
    Car(
      "Chevrolet",
      "Camaro",
      3400,
      "Weekly",
      "4.0",
      [
        "assets/images/camaro_0.png",
        "assets/images/camaro_1.png",
        "assets/images/camaro_2.png",
      ],
    ),
    Car(
      "Tata",
      "Harrier",
      3600,
      "Weekly",
      "4.0",
      [
        "assets/images/THarrier.jpg",
      ],
    ),
    Car(
      "Hyundai",
      "Kona Ev",
      4200,
      "Weekly",
      "4.0",
      [
        "assets/images/H_Kona_EV0.jpg",
        "assets/images/H_Kona_EV1.jpg",
      ],
    ),
    Car(
      "Ferrari",
      "Spider 488",
      4200,
      "Weekly",
      "4.0",
      [
        "assets/images/ferrari_spider_488_0.png",
        "assets/images/ferrari_spider_488_1.png",
        "assets/images/ferrari_spider_488_2.png",
        "assets/images/ferrari_spider_488_3.png",
        "assets/images/ferrari_spider_488_4.png",
      ],
    ),
    Car(
      "Maruti",
      "Dzire",
      2500,
      "Weekly",
      "4.0",
      [
        "assets/images/MDzire.jpg",
      ],
    ),
    Car(
      "Toyota",
      "Yaris",
      2000,
      "Weekly",
      "4.0",
      [
        "assets/images/Tyaris0.jpg",
        "assets/images/Tyaris1.jpg",
      ],
    ),
    Car(
      "Porsche",
      "718",
      4800,
      "Weekly",
      "4.0",
      [
        "assets/images/Porsche7181.jpg",
        "assets/images/Porsche7182.jpg",
      ],
    ),
    Car(
      "Ford",
      "Focus",
      2300,
      "Weekly",
      "4.0",
      [
        "assets/images/ford_0.png",
        "assets/images/ford_1.png",
      ],
    ),
    Car(
      "Fiat",
      "500x",
      1450,
      "Weekly",
      "4.0",
      [
        "assets/images/fiat_0.png",
        "assets/images/fiat_1.png",
      ],
    ),
    Car(
      "Mini Cooper",
      "Mini Cooper 3 Door",
      2300,
      "Weekly",
      "4.0",
      [
        "assets/images/MiniCoop3.jpg",
      ],
    ),

    Car(
      "Honda",
      "Civic",
      900,
      "Daily",
      "4.0",
      [
        "assets/images/honda_0.png",
      ],
    ),
    Car(
      "Citroen",
      "Picasso",
      1200,
      "Monthly",
      "4.0",
      [
        "assets/images/citroen_0.png",
        "assets/images/citroen_1.png",
        "assets/images/citroen_2.png",
      ],
    ),
  ];
}

class Dealer {

  String name;
  int offers;
  String image;


  Dealer(this.name, this.offers, this.image);

}

List<Dealer> getDealerList(){
  return <Dealer>[
    Dealer(
      "Hertz",
      174,
      "assets/images/hertz.png",
    ),
    Dealer(
      "Avis",
      126,
      "assets/images/avis.png",
    ),
    Dealer(
      "Tesla",
      89,
      "assets/images/tesla.jpg",
    ),
  ];
}

class Filter {

  String name;

  Filter(this.name);

}

List<Filter> getFilterList(){
  return <Filter>[
    Filter("Best Match"),
    Filter("Highest Price"),
    Filter("Lowest Price"),
  ];
}