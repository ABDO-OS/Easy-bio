import 'package:flutter/material.dart';

import '../../../subscriptions/presentation/widgets/appbar.dart';
import '../data/customInfofeld.dart';
import '../widgets/buttombody.dart';
import '../widgets/profilefield.dart';

class Accountscreen extends StatelessWidget {
  const Accountscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CostimeAppbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Profilefield(
                  info: Custominfofeld(
                    icon: Icons.flag_circle_rounded,
                    lable: "المحافظة",
                    value: "القاهرة",
                  ),
                ),
                Spacer(),
                Profilefield(
                  info: Custominfofeld(
                    icon: Icons.flag,
                    lable: "السنة الدراسية",
                    value: "الصف الثالث الثانوي",
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Profilefield(
              info: Custominfofeld(
                icon: Icons.flag_circle_outlined,
                lable: "رقم الهاتف",
                value: "01061093843",
              ),
            ),
            Spacer(),
            Buttombody(),
          ],
        ),
      ),
    );
  }
}
