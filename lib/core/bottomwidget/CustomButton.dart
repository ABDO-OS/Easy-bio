// import 'package:easy_bio/core/extensions/context_extension.dart';
import 'package:easy_bio/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

import '../style/text/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'styles/text/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, required this.text, this.icon});
  final void Function()? onTap;
  final Widget? icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 48.h,
        width: double.infinity,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          color: context.color.primaryColor,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: context.color.primaryColor,
              blurRadius: 4,
              offset: Offset(0, 2),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) icon!,
            if (icon != null) SizedBox(width: 8.w),

            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                text,
                style: TextStyles.regular22.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
