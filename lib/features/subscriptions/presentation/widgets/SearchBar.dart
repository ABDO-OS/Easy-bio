import 'package:flutter/material.dart';
import '../../../../core/style/colors/colors.dart' as appColors;

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: appColors.ColorsLight.primaryColor,
        border: Border.all(color: appColors.ColorsLight.secondaryColor),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintText: 'ابحث في الفيديوهات',
                hintStyle: TextStyle(color: Colors.grey[500]),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: 50,
            decoration: BoxDecoration(
              color: appColors.ColorsLight.secondaryColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(Icons.search, color: appColors.ColorsLight.white),
          ),
        ],
      ),
    );
  }
}
