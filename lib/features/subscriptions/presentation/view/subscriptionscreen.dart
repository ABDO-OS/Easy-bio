import 'package:flutter/material.dart';

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
          Spacer(flex: 1),
          Center(child: Custombody()),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
