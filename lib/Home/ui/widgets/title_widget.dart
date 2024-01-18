import 'package:flutter/material.dart';
import 'package:flutter_neyyar/common/app_colors.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final VoidCallback onButtonPressed;

  const TitleWidget({
    required this.title,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 4,
                height: 18,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.defaultColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xFFDFE5EB),
                width: 1.0,
              ),
            ),
            child: Center(
              child: IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: onButtonPressed,
                color: AppColors.arrowIconColor,
                iconSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
