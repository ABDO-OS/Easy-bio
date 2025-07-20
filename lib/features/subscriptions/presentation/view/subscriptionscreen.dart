import 'package:flutter/material.dart';

import '../../../../core/style/colors/colors.dart' as appColors;
import '../widgets/SearchBar.dart';
import '../widgets/appbar.dart';
import '../widgets/custombody.dart';

class Subscriptionscreen extends StatelessWidget {
  const Subscriptionscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: CostimeAppbar(),
      body: Column(
        children: [
          CustomSearchBar(),
          Spacer(),
          Center(child: Custombody()),
          Spacer(),
        ],
      ),
    );
  }
}
