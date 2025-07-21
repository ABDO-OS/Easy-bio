import 'package:flutter/material.dart';
import '../../../../core/style/colors/colors.dart' as appColors;
import '../../../../core/style/colors/colors.dart';
import '../../../../core/style/text/text_styles.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        gradient: kmaingradient,
        borderRadius: BorderRadius.circular(16),
      ),

      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'ابحث في الفيديوهات',
                    hintStyle: TextStyles.regular16.copyWith(
                      color: ColorsLight.thirdColor.withOpacity(0.5),
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                width: 50,
                decoration: BoxDecoration(
                  color: ColorsLight.thirdColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15.0),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Icon(Icons.search, color: appColors.ColorsLight.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const LinearGradient kmaingradient = LinearGradient(
  colors: [ColorsLight.white, ColorsLight.thirdColor],
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
);
