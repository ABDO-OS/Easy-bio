import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/bottomwidget/CustomButton.dart';
import '../../../../core/style/colors/colors.dart';
import '../../../../core/style/images/appassets.dart';

class Custombody extends StatelessWidget {
  const Custombody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(AppAssets.themeIcon(context)),
        Text(
          'انت غير مشترك في أي فيديوهات',
          style: TextStyle(color: ColorsLight.orange, fontSize: 20),
        ),
        SizedBox(height: 15),
        Text(
          'قم بالذهاب الى المنصة للاشتراك',
          style: TextStyle(
            color: const Color.fromARGB(255, 111, 111, 111),
            fontSize: 15,
          ),
        ),
        Text(
          'وعُد للمشاهدة',
          style: TextStyle(
            color: const Color.fromARGB(255, 111, 111, 111),
            fontSize: 15,
          ),
        ),
        CustomButton(text: 'الذهاب للمنصة', icon: Icon(Icons.web)),
      ],
    );
  }
}
