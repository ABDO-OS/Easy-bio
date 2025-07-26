import 'package:flutter/material.dart';

import '../../../subscriptions/presentation/widgets/appbar.dart';
import '../data/customInfofeld.dart';
import '../widgets/buttombody.dart';
import '../widgets/profilefield.dart';

class Accountscreen extends StatelessWidget {
  const Accountscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CostimeAppbar(),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Profilefield(
            iccon: Image.asset('assets/images/icons/user.png'),
            labble: "الطالب",
            info: Custominfofeld(
              imagge: Image.asset('assets/images/me.jpg'),
              name: "Abdalrhman Osama",
              user: "boda",
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Profilefield(
                iccon: Image.asset('assets/images/icons/student.png'),
                labble: "السنة الدراسية",
                info: Custominfofeld(value: "الصف الثالث الثانوي"),
              ),
              Profilefield(
                iccon: Image.asset('assets/images/icons/flag.png'),
                labble: "المحافظة",
                info: Custominfofeld(value: "القاهره"),
              ),
            ],
          ),
          Profilefield(
            iccon: Image.asset('assets/images/icons/telephone.png'),
            labble: "رقم الهاتف",
            info: Custominfofeld(value: "01122659904"),
          ),
          Buttombody(),
        ],
      ),
    );
  }
}
