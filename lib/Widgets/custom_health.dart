import 'package:flutter/cupertino.dart';

import '../utils/colors.dart';
import '../utils/text_style.dart';

class CustomHealth extends StatelessWidget {

  final String title;
  final String subtitle;

  const CustomHealth({
    super.key,
    required this.title,
    required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: AppColor.primaryColor,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            headingThree(
              data: title,
            ),
            bodyLarge(
                data:subtitle,
                textColor: AppColor.whiteColor.withOpacity(.5)
            ),

          ],
        )
      ],
    );
  }
}
