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
      width: 0.9.sw,
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
              SizedBox(width: 5.w),
              info.icon ?? SizedBox(),
            ],
          ),
          SizedBox(height: 8.h),

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
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            username ?? "",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: context.color.infoColor,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            info.value,
                            textAlign: TextAlign.right,
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
