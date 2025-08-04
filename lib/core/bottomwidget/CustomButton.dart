// import 'package:easy_bio/core/extensions/context_extension.dart';
import 'package:easy_bio/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

import '../style/text/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'styles/text/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    required this.text,
    this.icon,
    this.color,
    this.textColor = Colors.white,
  });
  final void Function()? onTap;
  final Widget? icon;
  final String text;
  final Color? color;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 45.h,
        width: double.infinity,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          color: color ?? context.color.primaryColor,
          borderRadius: BorderRadius.circular(16.r),
          // boxShadow: [
          //   BoxShadow(
          //     color: context.color.primaryColor,
          //     // blurRadius: 4,
          //     // offset: Offset(0, 2),
          //     // spreadRadius: 0,
          //   ),
          // ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: TextStyles.regular22.copyWith(color: textColor)),
            SizedBox(width: 5),
            if (icon != null) icon!,
            if (icon != null) SizedBox(width: 8.w),
          ],
        ),
      ),
    );
  }
}
