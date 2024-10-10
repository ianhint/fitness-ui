import 'package:fitness/Views/FitnessTracker/fitness_tracker.dart';
import 'package:fitness/Widgets/custom_circle_buttom.dart';
import 'package:fitness/Widgets/custom_item.dart';
import 'package:fitness/Widgets/custom_item_card.dart';
import 'package:fitness/utils/colors.dart';
import 'package:fitness/utils/text_style.dart';
import 'package:flutter/material.dart';

class FitenessHome extends StatelessWidget {
  const FitenessHome({super.key});

  @override
  Widget build(BuildContext context) {

    final size=MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Colors.black,
     appBar: AppBar(
       backgroundColor: Colors.black,

       leading: const CustomCircleButtom(icon: Icons.menu,),
       actions:const [
         CustomCircleButtom(icon: Icons.notifications)
       ],
     ),

      body: Padding(
        padding:const  EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headingTwo(data: 'Make Your'),
            headingTwo(data: 'Body Perfect',
            textColor: AppColor.primaryColor,
            ),
           const SizedBox(
              height:20 ,

            ),
            Container(
              width: size.width,
              height: size.height*.26,
              padding:const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(25),
              ),

             child:Stack(
                alignment: Alignment.centerRight,
                clipBehavior: Clip.none,
               children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       headingThree(data: 'Full Body\nExercise x3',
                       textColor: Colors.black
                       ),
                      const  CustomItem(
                          icon: Icons.local_fire_department_outlined,
                          text: '1230kCal',
                      ),
                     const  CustomItem(
                         icon: Icons.access_time_rounded,
                         text: '50min',
                     ),
                       const SizedBox(
                         height: 10,
                       ),
                       ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           backgroundColor: const Color(0xFFB9CF30)
                         ),
                         onPressed: (){
                           Navigator.push(
                             context, MaterialPageRoute(
                             builder: (context) =>const FitnessTracker() ,
                           ),);
                         },
                         child:const Text('Start Now',
                         style: TextStyle(color: Colors.black),
                         ),
                       )
                     ],
                   ),
                 ),
                 Positioned(
                   right: -30,

                   child: Image.asset(
                       'assets/images/images girl.png',

                   height: 300,
                     width: 300,
                   ),
                 ),
               ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                Expanded(
                  child: CustomItemCard(
                      title: 'Running\nDistance',
                      value: '1.8km',
                      icon: Icons.directions_run,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CustomItemCard(
                    title: 'Running\nDistance',
                    value: '1.8km',
                    icon: Icons.directions_bike,
                    isDark: true,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding:const EdgeInsets.fromLTRB(10, 0, 0, 0),
              decoration: BoxDecoration(
                color: AppColor.secondaryColor,
                borderRadius: BorderRadius.circular(40),
              ),
              child: ListTile(
                contentPadding:const EdgeInsets.only(
                  left: 15,
                ),
                title: headingThree(
                    data: 'Appoinment',
                ),
                subtitle: bodyLarge(
                    data: 'For a exercise practice',
                  textColor: Colors.white.withOpacity(.5),
                ),
                trailing:const CustomCircleButtom(
                    icon: Icons.call,
                backgroundColor: AppColor.primaryColor,
                  iconColor: Colors.black,
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
