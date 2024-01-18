import 'package:flutter/material.dart';
import 'package:flutter_neyyar/Home/provider/home_screen_provider.dart';
import 'package:flutter_neyyar/common/app_colors.dart';
import 'package:provider/provider.dart';

class CategoryItemList extends StatelessWidget {
  const CategoryItemList({super.key});

  @override
  Widget build(BuildContext context) {
    final homeScreenProvider = Provider.of<HomeScreenProvider>(context);
    return SizedBox(
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 0,
          direction: Axis.vertical,
          children: homeScreenProvider
              .getItems()
              .map((element) => Container(
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.borderColor),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Icon(
                          element['icon'],
                          color: AppColors.categoryIconColor,
                          size: 18,
                        ),
                        SizedBox(width: 8.0),
                        Text(element['text']),
                      ],
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
