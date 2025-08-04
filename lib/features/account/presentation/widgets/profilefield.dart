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
  final String labble;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment
          .start, // 👈 يخلي العنوان (icon+label) يبدأ من الشمال
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 20.w, height: 20.h, child: info.icon ?? iccon),
            const SizedBox(width: 8), // مسافة بسيطة بين الأيقونة والـ label
            Text(info.lable ?? labble),
          ],
        ),
        Container(
          width: double.infinity, // 👈 ياخد عرض الشاشة
          // padding: EdgeInsets.all(12.r), // شوية padding من جوه
          decoration: BoxDecoration(
            border: Border.all(color: context.color.infoColor),
            borderRadius: BorderRadius.circular(18.r),
          ),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.center, // 👈 يخلي كل العناصر في النص
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.center, // 👈 النصوص في النص
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (info.name != null && info.name!.isNotEmpty)
                    Text(
                      info.name!,
                      style: TextStyles.regular16.copyWith(
                        color: context.color.infoColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  if (info.user != null && info.user!.isNotEmpty)
                    Text(
                      info.user!,
                      style: TextStyles.regular16.copyWith(
                        color: context.color.infoColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  if (info.value != null && info.value!.isNotEmpty)
                    Text(
                      info.value!,
                      style: TextStyles.regular16.copyWith(
                        color: context.color.infoColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                ],
              ),
              if (info.imagge != null) ...[
                const SizedBox(width: 12), // مسافة بين النصوص والصورة
                info.imagge!,
              ],
            ],
          ),
        ),
      ],
    );
  }
}
