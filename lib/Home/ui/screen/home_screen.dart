import 'package:flutter/material.dart';
import 'package:flutter_neyyar/Home/ui/widgets/course_list.dart';
import 'package:flutter_neyyar/Home/ui/widgets/title_widget.dart';
import 'package:flutter_neyyar/common/app_colors.dart';
import 'package:provider/provider.dart';

import '../../provider/home_screen_provider.dart';
import '../widgets/category_list.dart';
import '../widgets/image_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final homeScreenProvider = Provider.of<HomeScreenProvider>(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 4,
              color: Colors.grey[200],
            ),
            SwipeImageView(),
            TitleWidget(
              title: 'Categories',
              onButtonPressed: () {},
            ),
            CategoryItemList(),
            SizedBox(height: 8),
            TitleWidget(
              title: 'My Courses',
              onButtonPressed: () {},
            ),
            CourseList(courseList: homeScreenProvider.getCourseList()),
            TitleWidget(
              title: 'Top Courses for Kerala PSC',
              onButtonPressed: () {},
            ),
            CourseList(courseList: homeScreenProvider.getCoursePscList()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv),
            label: 'Live Class',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.private_connectivity),
            label: 'Connect',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_important),
            label: 'Notifications',
          ),
        ],
        selectedItemColor: AppColors.defaultColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Selected', style: TextStyle(fontSize: 12)),
              Text('Categories',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.keyboard_arrow_down,
                color: AppColors.arrowIconColor, size: 28),
            onPressed: () {},
          ),
        ],
      ),
      leading: Container(
        width: 44,
        height: 44,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.defaultColor,
        ),
        child: Center(
          child: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            color: Colors.white,
            alignment: Alignment.centerLeft,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                color: AppColors.borderColor,
                width: 1.0,
              ),
            ),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: AppColors.defaultColor),
            child: CircleAvatar(
                radius: 13,
                backgroundImage: AssetImage('assets/images/woman.png')),
          ),
        ),
      ],
    );
  }
}
