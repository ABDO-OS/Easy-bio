import 'package:easy_bio/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import '../data/customInfofeld.dart';

class Profilefield extends StatelessWidget {
  const Profilefield({super.key, required this.info});
  final Custominfofeld info;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 156,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                info.lable,
                style: TextStyle(
                  color: context.color.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 5),
              Icon(info.icon, size: 16, color: context.color.primaryColor),
            ],
          ),

          const SizedBox(height: 8),
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: context.color.infoColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Center(
                    child: Text(
                      info.value,
                      style: TextStyle(
                        color: context.color.infoColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
