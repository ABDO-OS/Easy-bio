import 'package:easy_bio/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/bottomwidget/CustomButton.dart';
import '../../../core/style/colors/colors.dart';
import '../../../core/style/text/text_styles.dart';

class Mainelements extends StatelessWidget {
  const Mainelements({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 22),
      child: Column(
        children: [
          Image(
            image: AssetImage(
              Theme.of(context).brightness == Brightness.dark
                  ? "assets/images/Frame_2.png"
                  : "assets/images/Frame_1.png",
            ),
            width: 200,
            height: 393,
          ),
          SizedBox(height: 45.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "تطبيق مشاهدة فيديوهات",
                style: TextStyles.regular22500.copyWith(
                  color: ColorsDark.primaryColor,
                ),
              ),
              SizedBox(width: 5),
              Image.asset("assets/images/video.png", width: 20.w, height: 16.h),
            ],
          ),
          SizedBox(height: 10.h),
          Text(
            "الأحياء وعلوم الأرض ( عربي - لغات )",
            style: TextStyles.regular20.copyWith(
              color: context.color.infoColor,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "طلاب د. عبدالرحمن | للمرحلة الثانوية",
            style: TextStyles.regular20.copyWith(
              color: context.color.infoColor,
            ),
          ),
          SizedBox(height: 45.h),
          CustomButton(text: "تسجيل الدخول"),
          SizedBox(height: 16.h),
          Container(
            decoration: BoxDecoration(
              border: BoxBorder.all(color: context.color.accountbottomcolor),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: CustomButton(
              text: "إنشاء حساب في المنصة",
              textColor: context.color.accountbottomcolor,
              color: context.color.accountColor,
            ),
          ),
        ],
      ),
    );
  }
}
