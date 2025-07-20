import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/style/images/appassets.dart';

class CostimeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CostimeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: AppBar(
        title: Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: SvgPicture.asset(AppAssets.themeIcon(context)),
            ),
            Spacer(),
            SvgPicture.asset(AppAssets.logo(context), height: 40, width: 40),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
