import 'package:easy_bio/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/bottomwidget/CustomButton.dart';
import '../../../../core/style/colors/colors.dart';

class Buttombody extends StatelessWidget {
  const Buttombody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'لتعديل بياناتك قم بالدخول إلى المنصة',
          style: TextStyle(color: context.color.textColor.withOpacity(0.5)),
        ),
        SizedBox(height: 10),
        CustomButton(
          text: 'تعديل بياناتك بالمنصة',
          color: context.color.editbottom,
          icon: ImageIcon(
            AssetImage('assets/images/icons/bx_edit.png'),
            color: ColorsLight.white,
          ),
        ),
        SizedBox(height: 20),
        CustomButton(text: 'تسجيل الخروج', color: ColorsLight.orange),
      ],
    );
  }
}
