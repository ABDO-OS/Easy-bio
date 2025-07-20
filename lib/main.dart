import 'package:easy_bio/features/subscriptions/presentation/view/subscriptionscreen.dart';
import 'package:flutter/material.dart';

import 'core/style/colors/colors.dart' as appColors;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Subscriptionscreen());
  }
}
