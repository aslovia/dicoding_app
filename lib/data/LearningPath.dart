import 'package:flutter/material.dart';

class LearningPath {
  final String id;
  final String imageUrl;
  final String title;

  LearningPath({
    @required this.id,
    @required this.imageUrl,
    @required this.title,
  });
}

final learningPathList = [
  LearningPath(
    id: '7',
    imageUrl: 'https://d17ivq9b7rppb3.cloudfront.net/original/academy/android_developer_logo_201219145044.png',
    title: 'Android Developer',
  ),
  LearningPath(
    id: '2',
    imageUrl: 'https://d17ivq9b7rppb3.cloudfront.net/original/academy/cloud_developer_logo_201219145056.png',
    title: 'Cloud Developer',
  ),
  LearningPath(
    id: '22',
    imageUrl: 'https://d17ivq9b7rppb3.cloudfront.net/original/academy/web_developer_logo_201219135331.png',
    title: 'Front-End Web Developer',
  ),
  LearningPath(
    id: '9',
    imageUrl: 'https://d17ivq9b7rppb3.cloudfront.net/original/academy/ios_developer_logo_260320162607.png',
    title: 'iOS Developer',
  ),
  LearningPath(
    id: '23',
    imageUrl: 'https://d17ivq9b7rppb3.cloudfront.net/original/academy/ar_vr_developer_logo_301219145216.png',
    title: 'AR/VR Developer',
  ),
];
