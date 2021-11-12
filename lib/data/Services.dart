import 'package:flutter/material.dart';

class Services {
  final String id;
  final String imageUrl;
  final String title;
  final String description;

  Services({
    @required this.id,
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final servicesList = [
  Services(
    id: '1',
    imageUrl: 'https://d17ivq9b7rppb3.cloudfront.net/original/commons/home-thumb-academy.png',
    title: 'Academy',
    description: 'Belajar menggunakan kurikulum yang telah divalidasi industri IT internasional seperti Google, Microsoft, dan LINE. Diskusikan Code yang kamu tulis dengan para Expert.',
  ),
  Services(
    id: '2',
    imageUrl: 'https://d17ivq9b7rppb3.cloudfront.net/original/commons/home-thumb-challenge.png',
    title: 'Challenge',
    description: 'Uji kemampuanmu dengan mengikuti Challenge yang diselenggarakan oleh perusahaan IT nasional dan multi-nasional.',
  ),
  Services(
    id: '3',
    imageUrl: 'https://d17ivq9b7rppb3.cloudfront.net/original/commons/home-thumb-event.png',
    title: 'Event',
    description: 'Bangun jejaring luas. Temui langsung para pelaku IT untuk saling berbagi dan belajar. Cari Event terdekat dari kotamu.',
  ),
  Services(
    id: '4',
    imageUrl: 'https://d17ivq9b7rppb3.cloudfront.net/original/commons/home-thumb-job.png',
    title: 'Job PlatForm',
    description: 'Cari lowongan pekerjaan khusus developer. Untuk perusahaan, temukan talenta digital yang Anda butuhkan. Bersama membangun ekosistem IT Indonesia.',
  ),
];
