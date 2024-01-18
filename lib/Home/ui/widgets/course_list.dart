import 'package:flutter/material.dart';
import 'package:flutter_neyyar/common/app_colors.dart';

import 'star_rating.dart';

class CourseList extends StatefulWidget {
  final List<Map<String, dynamic>> courseList;
  const CourseList({Key? key, required this.courseList}) : super(key: key);

  @override
  State<CourseList> createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.courseList.length,
        itemBuilder: (context, index) {
          final item = widget.courseList[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageView(item['image']),
                Row(children: [
                  linearProgress(item['percentage']),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '${item['percentage']}%',
                    style: TextStyle(fontSize: 12),
                  )
                ]),
                Row(
                  children: [
                    capsuleTitle("Premium", Color(0xFFB5842F)),
                    SizedBox(
                      width: 12,
                    ),
                    capsuleTitle("Live", AppColors.defaultColor),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  item['title'],
                  style: TextStyle(fontSize: 14.0),
                  maxLines: 2,
                ),
                SizedBox(height: 8),
                Text(
                  item['institution'],
                  style: TextStyle(fontSize: 12.0, color: Color(0xFF606770)),
                ),
                SizedBox(height: 8),
                starRatingAndReviews(item['rating'], item['reviews'])
              ],
            ),
          );
        },
      ),
    );
  }
}

Widget ImageView(String image) {
  return Stack(
    alignment: Alignment.topLeft,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          image,
          width: 232,
          height: 120.0,
          fit: BoxFit.cover,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.play_circle,
          color: Colors.white,
          size: 30,
        ),
      ),
    ],
  );
}

Widget linearProgress(int percentage) {
  return SizedBox(
    height: 25,
    width: 200,
    child: Row(
      children: [
        Expanded(
          flex: percentage,
          child: Container(
            height: 4,
            color: Color.fromARGB(255, 109, 158, 179),
            child: Text('box1'),
          ),
        ),
        Expanded(
          flex: 100 - percentage,
          child: Container(
            height: 4,
            color: Color.fromARGB(255, 219, 210, 210),
            child: Text('box2'),
          ),
        ),
      ],
    ),
  );
}

Widget capsuleTitle(String name, Color backColor) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      height: 24,
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      decoration: BoxDecoration(
        color: backColor,
        borderRadius: BorderRadius.circular(2.0),
      ),
      child: Text(
        name,
        style: TextStyle(
          color: Colors.white,
          fontSize: 12.0,
        ),
      ),
    ),
  );
}

Widget starRatingAndReviews(double rating, int review) {
  return Row(
    children: [
      Text(
        '$rating',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      SizedBox(width: 4),
      StarRating(rating: 4),
      SizedBox(width: 12),
      Text(
        '($review)',
        style: TextStyle(fontSize: 12),
      ),
    ],
  );
}
