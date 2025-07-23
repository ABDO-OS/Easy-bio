import 'package:easy_bio/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/customInfofeld.dart';

class Userfield extends StatelessWidget {
  const Userfield({super.key, required this.info, this.username});

  final Custominfofeld info;
  final String? username;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.9.sw, // Responsive for phones and tablets
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Label and icon
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
              SizedBox(width: 5.w),
              Icon(info.icon, size: 16.sp, color: context.color.primaryColor),
            ],
          ),
          SizedBox(height: 8.h),

          // Container with top-right icon
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(12.r),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: context.color.infoColor),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Row(
                  children: [
                    // Image avatar

                    // Text content
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end, // لليمين
                        children: [
                          Text(
                            username ?? "",
                            textAlign: TextAlign.right, // محاذاة لليمين
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: context.color.infoColor,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            info.value,
                            textAlign: TextAlign.right, // محاذاة لليمين
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: context.color.infoColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Container(
                      width: 50.w,
                      height: 50.w,
                      margin: EdgeInsets.only(right: 8.w),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/me.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
