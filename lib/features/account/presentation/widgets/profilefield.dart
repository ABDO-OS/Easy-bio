import 'package:easy_bio/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../data/customInfofeld.dart';

class Profilefield extends StatelessWidget {
  const Profilefield({super.key, required this.info, this.username});
  final Custominfofeld info;
  final String? username;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.4.sw,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                info.lable,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: context.color.primaryColor,
                ),
              ),
              SizedBox(width: 2.w),
              Icon(info.icon, size: 20.sp, color: context.color.primaryColor),
            ],
          ),

          SizedBox(height: 3.h),

          Container(
            // alignment: Alignment.bottomRight,
            constraints: BoxConstraints(minHeight: 50.h),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: context.color.infoColor),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                info.value,
                style: TextStyle(
                  fontSize: 15.sp,
                  color: context.color.infoColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
