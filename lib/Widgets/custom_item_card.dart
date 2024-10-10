
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/text_style.dart';
import 'custom_circle_buttom.dart';

class CustomItemCard extends StatelessWidget {

  final String title;
  final String value;
  final IconData icon;
  final bool?isDark;

  const CustomItemCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    this.isDark,

  });

  @override
  Widget build(BuildContext context) {
    var thisIsDark=isDark==true;

    return Container(
      padding:const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color:thisIsDark?AppColor.secondaryColor:
        AppColor.primaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: CustomCircleButtom(
              backgroundColor:thisIsDark ? AppColor.whiteColor.withOpacity(.1):
              Colors.black.withOpacity(.1),
              icon: icon,
              iconColor: thisIsDark? AppColor.whiteColor : Colors.black,
            ),
          ),
          bodyLarge(
              data: title,
              textColor:thisIsDark ? AppColor.whiteColor: Colors.black
          ),
          headingThree(
            data: value,
            textColor:thisIsDark ? AppColor.whiteColor: Colors.black,
          )
        ],
      ),
    );
  }
}
