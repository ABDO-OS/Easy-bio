import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/style/images/appassets.dart';

class CostimeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CostimeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(AppAssets.themeIcon(context)),
            ),
            Spacer(),
            SvgPicture.asset(
              AppAssets.logo(context),
              // height: 30,
              // width: 50,
              // placeholderBuilder: (context) => CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
