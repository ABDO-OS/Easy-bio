import 'package:flutter/material.dart';

import '../../../../core/style/colors/colors.dart' as appColors;
import '../widgets/SearchBar.dart';
import '../widgets/appbar.dart';

class Subscriptionscreen extends StatelessWidget {
  const Subscriptionscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.ColorsLight.primaryColor,
      appBar: CostimeAppbar(),
      body: CustomSearchBar(),
    );
  }
}
