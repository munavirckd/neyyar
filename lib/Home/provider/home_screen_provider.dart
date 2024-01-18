import 'package:flutter/material.dart';

class HomeScreenProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> items = [
    {'icon': Icons.home, 'text': 'Competitive Exam'},
    {'icon': Icons.work, 'text': 'Kerala PSC Exam'},
    {'icon': Icons.school, 'text': 'IT and Software'},
    {'icon': Icons.home, 'text': 'Competitive Exam'},
    {'icon': Icons.work, 'text': 'Kerala PSC'},
    {'icon': Icons.school, 'text': 'IT and Software'},
  ];

  List<Map<String, dynamic>> getItems() {
    return List<Map<String, dynamic>>.from(items);
  }

  final List<Map<String, dynamic>> myCources = [
    {
      'image': 'assets/images/image4.jpeg',
      'title': 'Cerificate in word proccessing &\nData entry console operation',
      'percentage': 60,
      'institution': 'Talent Academy',
      'rating': 4.0,
      'reviews': 888
    },
    {
      'image': 'assets/images/image5.jpeg',
      'title': 'Cerificate in word proccessing &\nData entry console operation',
      'percentage': 40,
      'institution': 'Talent Academy',
      'rating': 4.0,
      'reviews': 888
    },
    {
      'image': 'assets/images/image3.jpeg',
      'title': 'Cerificate in word proccessing &\nData entry console operation',
      'percentage': 30,
      'institution': 'Talent Academy',
      'rating': 4.0,
      'reviews': 888
    },
    {
      'image': 'assets/images/image1.jpg',
      'title': 'Cerificate in word proccessing &\nData entry console operation',
      'percentage': 60,
      'institution': 'Talent Academy',
      'rating': 4.0,
      'reviews': 888
    },
  ];

  final List<Map<String, dynamic>> topCoursePsc = [
    {
      'image': 'assets/images/image3.jpeg',
      'title': 'Cerificate in word proccessing &\nData entry console operation',
      'percentage': 60,
      'institution': 'Talent Academy',
      'rating': 4.0,
      'reviews': 888
    },
    {
      'image': 'assets/images/image5.jpeg',
      'title': 'Cerificate in word proccessing &\nData entry console operation',
      'percentage': 40,
      'institution': 'Talent Academy',
      'rating': 4.0,
      'reviews': 888
    },
    {
      'image': 'assets/images/image3.jpeg',
      'title': 'Cerificate in word proccessing &\nData entry console operation',
      'percentage': 30,
      'institution': 'Talent Academy',
      'rating': 4.0,
      'reviews': 888
    },
    {
      'image': 'assets/images/image1.jpg',
      'title': 'Cerificate in word proccessing &\nData entry console operation',
      'percentage': 60,
      'institution': 'Talent Academy',
      'rating': 4.0,
      'reviews': 888
    },
  ];

  List<Map<String, dynamic>> getCourseList() {
    return List<Map<String, dynamic>>.from(myCources);
  }

  List<Map<String, dynamic>> getCoursePscList() {
    return List<Map<String, dynamic>>.from(topCoursePsc);
  }
}
