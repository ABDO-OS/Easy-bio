import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/bottomwidget/CustomButton.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/style/colors/colors.dart';
import '../../../../core/style/text/text_styles.dart';

class Custombody extends StatelessWidget {
  const Custombody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(ImageAssets.bag),
        SizedBox(height: 20),
        Text(
          'انت غير مشترك في أي فيديوهات',
          style: TextStyles.regular22.copyWith(color: ColorsLight.orange),
        ),
        SizedBox(height: 10),
        Text(
          'قم بالذهاب الى المنصة للاشتراك',
          style: TextStyles.regular16.copyWith(
            color: const Color.fromARGB(255, 111, 111, 111),
          ),
        ),
        Text(
          'وعُد للمشاهدة',
          style: TextStyles.regular16.copyWith(
            color: const Color.fromARGB(255, 111, 111, 111),
            fontSize: 15,
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: CustomButton(
            text: 'الذهاب للمنصة',
            icon: Icon(Icons.language),
          ),
        ),
      ],
    );
  }
}
