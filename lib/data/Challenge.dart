import 'package:flutter/material.dart';

class Challenge {
  final String id;
  final String imageUrl;
  final String title;
  final String company;
  final String winner;
  final String expired;
  final String description;

  Challenge({
    @required this.id,
    @required this.imageUrl,
    @required this.title,
    @required this.company,
    @required this.winner,
    @required this.expired,
    @required this.description
  });
}

final challengeList = [
  Challenge(
    id: '606',
    imageUrl: 'https://d17ivq9b7rppb3.cloudfront.net/original/challenge/202005290605072b6927e2dbd59fd3b95e02c5410b722a.png',
    title: 'Buat Visualisasi Data Terbaikmu',
    company: 'Dicoding Indonesia',
    winner: '5',
    expired: '10 Hari Lagi',
    description: "Buat setiap orang mengerti data dan informasi dengan mudah"
  ),
  Challenge(
      id: '474',
      imageUrl: 'https://d17ivq9b7rppb3.cloudfront.net/original/challenge/20181106122401af567c2413ef86e4b8c5fd7fa4a8f560.png',
      title: 'Sustainable Tourism Challenge',
      company: 'Google',
      winner: '3',
      expired: 'Selesai',
      description: 'Google Developer Weekend Hackaton'
  ),
  Challenge(
      id: '422',
      imageUrl: 'https://d17ivq9b7rppb3.cloudfront.net/original/challenge/20180824233334578921891b900adb448c7fc7fc340dbd.jpg',
      title: 'LINE Creativate 2018 - Chatbot Competition (Kategori Hiburan)',
      company: 'LINE Indonesia',
      winner: '20',
      expired: 'Selesai',
      description: 'LINE Creativate 2018'
  ),
];
