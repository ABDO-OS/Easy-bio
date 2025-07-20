// import 'package:easy_bio/core/style/images/appassets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CostimeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CostimeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: AppBar(
        title: Row(
          children: [
            ElevatedButton(onPressed: () {}, child: Icon(Icons.abc)),
            Spacer(),
            SvgPicture.asset(
              'assets/images/app_icon_white.svg',
              height: 40,
              width: 40,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
