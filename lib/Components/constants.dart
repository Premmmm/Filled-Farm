import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  final backgroundColorLogin = Color(0xFF111C28);
  final backgroundColorAllScreens = Color(0xFF121212);
  final appBarBackGroundColor = Color(0xFF13161D);
  final profilePictureCircleColor = Colors.blueAccent; //Color(0xFF3700B3);
  final style = GoogleFonts.montserrat();
  final List<String> occupation = ['Farmer', 'Vendor'];
  final List mlModel = [
    {
      "Month": "November",
      "Name": "Arhar",
      "Predicted Price": 3648.0,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Bajra",
      "Predicted Price": 1899.975,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Barley",
      "Predicted Price": 1471.96,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Copra",
      "Predicted Price": 9751.2,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Cotton",
      "Predicted Price": 5022.0,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Sesamum",
      "Predicted Price": 6753.6,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Gram",
      "Predicted Price": 3942.4000000000005,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Groundnut",
      "Predicted Price": 4636.1,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Jowar",
      "Predicted Price": 2093.0399999999995,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Maize",
      "Predicted Price": 1549.825,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Masoor",
      "Predicted Price": 3393.6,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Moong",
      "Predicted Price": 3902.5,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Niger",
      "Predicted Price": 4938.5,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Paddy",
      "Predicted Price": 1936.7525,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Ragi",
      "Predicted Price": 3171.0,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Rape",
      "Predicted Price": 3665.0,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Jute",
      "Predicted Price": 3061.9,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Safflower",
      "Predicted Price": 3762.5,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Soyabean",
      "Predicted Price": 3115.2,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Sugarcane",
      "Predicted Price": 3813.75,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Sunflower",
      "Predicted Price": 4347.5,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Urad",
      "Predicted Price": 5099.8,
      "Rainfall": 39.8,
      "Year": 2020
    },
    {
      "Month": "November",
      "Name": "Wheat",
      "Predicted Price": 2054.7,
      "Rainfall": 39.8,
      "Year": 2020
    }
  ];
  final List<String> cropTypes = [
    'Paddy',
    'Arhar',
    'Bajra',
    'Barley',
    'Copra',
    'Cotton',
    'Sesamum',
    'Gram',
    'Groundnut',
    'Jowar',
    'Maize',
    'Masoor',
    'Moong',
    'Niger',
    'Ragi',
    'Rape',
    'Jute',
    'Safflower',
    'Soyabean',
    'Sugarcane',
    'Sunflower',
    'Urad',
    'Wheat'
  ];
}

class SoldItems {
  final String ownerName;
  final String vendorName;
  final String tag;
  final String quantity;
  final String city;
  final String rating;
  final String photoUrl;
  final String ownerEmail;
  final String vendorEmail;
  final String ownerRating;
  final String costPer50Kg;
  final String organization;
  SoldItems(
      {this.ownerName,
      this.vendorName,
      this.tag,
      this.quantity,
      this.city,
      this.photoUrl,
      this.ownerEmail,
      this.vendorEmail,
      this.ownerRating,
      this.costPer50Kg,
      this.organization,
      this.rating});
}

class ForSaleItem {
  final String ownerName;
  final String tag;
  final String quantity;
  final String city;
  final String photoUrl;
  final String ownerEmail;
  final String ownerRating;
  final String costPer50Kg;
  ForSaleItem({
    this.ownerName,
    this.tag,
    this.quantity,
    this.city,
    this.photoUrl,
    this.ownerEmail,
    this.ownerRating,
    this.costPer50Kg,
  });
}
