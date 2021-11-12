import 'package:flutter/material.dart';

class Event {
  final String id;
  final String imageUrl;
  final String title;
  final String company;
  final String capacity;
  final String day;
  final String description;
  final String type;

  Event({
    @required this.id,
    @required this.imageUrl,
    @required this.title,
    @required this.company,
    @required this.capacity,
    @required this.day,
    @required this.description,
    @required this.type
  });
}

final eventList = [
  Event(
      id: '3216',
      imageUrl: 'https://d17ivq9b7rppb3.cloudfront.net/original/event/ayo_maju_bersama_komunitas_google_di_indonesia_logo_180620215447.png',
      title: 'Ayo Maju Bersama Komunitas Google di Indonesia',
      company: 'Developer Student Clubs Indonesia',
      capacity: '9600',
      day: '7 Hari Lagi',
      description: "DSC Talk Series Live Indonesia - Closing season dengan topik Ayo Maju Bersama Komunitas Google di Indonesia"
  ),
//  Event(
//      id: '474',
//      imageUrl: 'https://d17ivq9b7rppb3.cloudfront.net/original/challenge/20181106122401af567c2413ef86e4b8c5fd7fa4a8f560.png',
//      title: 'Sustainable Tourism Challenge',
//      company: 'Google',
//      winner: '3',
//      expired: 'Selesai',
//      description: 'Google Developer Weekend Hackaton'
//  ),
//  Event(
//      id: '422',
//      imageUrl: 'https://d17ivq9b7rppb3.cloudfront.net/original/challenge/20180824233334578921891b900adb448c7fc7fc340dbd.jpg',
//      title: 'LINE Creativate 2018 - Chatbot Competition (Kategori Hiburan)',
//      company: 'LINE Indonesia',
//      winner: '20',
//      expired: 'Selesai',
//      description: 'LINE Creativate 2018'
//  ),
];
