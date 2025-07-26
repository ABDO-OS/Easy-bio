import 'package:easy_bio/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/style/text/text_styles.dart';
import '../data/customInfofeld.dart';

class Profilefield extends StatelessWidget {
  const Profilefield({
    super.key,
    required this.info,
    this.iccon,
    required this.labble,
  });
  final Custominfofeld info;
  final Widget? iccon;
  final labble;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 20.w, height: 20.h, child: info.icon ?? iccon),
            Text(info.lable ?? labble),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: context.color.infoColor),
            borderRadius: BorderRadius.circular(18.r),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 20.w,
                height: 20.h,
                child: info.imagge != null
                    ? Image.asset('assets/images/me.jpg')
                    : null,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      info.name ?? "",
                      style: TextStyles.regular16.copyWith(
                        color: context.color.infoColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      info.user ?? "",
                      style: TextStyles.regular16.copyWith(
                        color: context.color.infoColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      info.value ?? "",
                      style: TextStyles.regular16.copyWith(
                        color: context.color.infoColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
