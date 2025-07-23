import 'package:easy_bio/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../subscriptions/presentation/widgets/appbar.dart';
import '../data/customInfofeld.dart';
import '../widgets/buttombody.dart';
import '../widgets/profilefield.dart';
import '../widgets/userfield.dart';

class Accountscreen extends StatelessWidget {
  const Accountscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CostimeAppbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Userfield(
              info: Custominfofeld(
                icon: ImageIcon(
                  AssetImage('assets/images/icons/user.png'),
                  size: 17,
                  color: context.color.primaryColor,
                ),
                lable: "المحافظة",
                value: "القاهرة",
              ),
              username: "عبد الرحمن أسامة",
            ),
            Spacer(flex: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Profilefield(
                  info: Custominfofeld(
                    icon: ImageIcon(
                      AssetImage('assets/images/icons/flag.png'),
                      size: 20,
                      color: context.color.primaryColor,
                    ),
                    lable: "المحافظة",
                    value: "القاهرة",
                  ),
                ),
                Spacer(),
                Profilefield(
                  info: Custominfofeld(
                    icon: ImageIcon(
                      AssetImage('assets/images/icons/student.png'),
                      size: 20,
                      color: context.color.primaryColor,
                    ),
                    lable: "السنة الدراسية",
                    value: "الصف الثالث الثانوي",
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Profilefield(
              info: Custominfofeld(
                icon: ImageIcon(
                  AssetImage('assets/images/icons/telephone.png'),
                  size: 20,
                  color: context.color.primaryColor,
                ),
                lable: "رقم الهاتف",
                value: "01061093843",
              ),
            ),
            Spacer(flex: 10),
            Buttombody(),
          ],
        ),
      ),
    );
  }
}
