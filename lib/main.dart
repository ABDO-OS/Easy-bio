import 'package:easy_bio/features/subscriptions/presentation/view/subscriptionscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/style/colors/colors.dart' as appColors;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: appColors.ColorsLight.primaryColor,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: appColors.ColorsDark.black2,
        ),
        themeMode: ThemeMode.dark,
        home: const Subscriptionscreen(),
      ),
    );
  }
}
