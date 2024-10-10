import 'package:fitness/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomCircleButtom extends StatelessWidget {
  final IconData icon;
  final double ?height;
  final double?width;
  final Color?backgroundColor;
  final Color? iconColor;

  const CustomCircleButtom({
    super.key,
    required this.icon,
    this.height, this.width,
    this.backgroundColor,
    this.iconColor,
    });

  @override
  Widget build(BuildContext context) {
    return  Container(
      height:height?? 80,
      width:width?? 80,
      decoration: BoxDecoration(
        color:backgroundColor?? AppColor.whiteColor.withOpacity(.1),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        size: 30,
        color: iconColor??Colors.white,
      ),
    );
  }
}
