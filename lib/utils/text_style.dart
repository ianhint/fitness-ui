

import 'package:flutter/cupertino.dart';

import 'colors.dart';


  Widget headingTwo({
  required String data,
    Color?textColor,
    FontWeight?fontWidth,

}){
  return  Text(data,
      style: TextStyle(
        color:textColor?? AppColor.whiteColor,
        fontSize: 30,
        fontWeight:fontWidth?? FontWeight.w700,
      ),
    );
  }

Widget headingThree({
  required String data,
  Color?textColor,
  FontWeight?fontWidth,

}){
  return  Text(data,
    style: TextStyle(
      color:textColor?? AppColor.whiteColor,
      fontSize: 25,
      fontWeight:fontWidth?? FontWeight.w700,
    ),
  );
}

Widget bodyLarge({
  required String data,
  Color?textColor,
  FontWeight?fontWidth,

}){
  return  Text(data,
    style: TextStyle(
      color:textColor?? AppColor.whiteColor,
      fontSize: 18,
      fontWeight:fontWidth?? FontWeight.w500,
    ),
  );
}
