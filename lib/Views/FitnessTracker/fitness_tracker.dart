import 'package:fitness/Views/FitnessTracker/widgets/custom_tracker_chart.dart';
import 'package:fitness/Widgets/custom_circle_buttom.dart';
import 'package:fitness/Widgets/custom_health.dart';
import 'package:fitness/Widgets/custom_time_tracker.dart';
import 'package:fitness/utils/colors.dart';
import 'package:fitness/utils/text_style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class FitnessTracker extends StatelessWidget {
  const FitnessTracker({super.key});

  @override
  Widget build(BuildContext context) {

    final size=MediaQuery.sizeOf(context);

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,

          leading: const CustomCircleButtom(
            icon: Icons.arrow_back_ios_new,
          ),
          actions:const [
            CustomCircleButtom(
                icon: Icons.notifications,
            )
          ],
        ),

        body: Padding(
          padding:const  EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headingTwo(data: 'Health '),
              headingTwo(data: 'Overview ',
                textColor: AppColor.primaryColor,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomHealth(
                      title:'Calories' ,
                      subtitle:'1360kCal' ,
                  ),
                  CustomHealth(
                    title:'Protein' ,
                    subtitle:'50 Gram' ,
                  ),
                ],
              ),

            const SizedBox(
              height: 10,
            ),

            const  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomHealth(
                    title:'Sleep' ,
                    subtitle:'3 Hours' ,
                  ),
                  CustomHealth(
                    title:'weight' ,
                    subtitle:'52 KG' ,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: size.width,
                padding:const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    ListTile(

                      leading: CustomCircleButtom(
                        icon: Icons.heart_broken,
                      backgroundColor: Colors.black.withOpacity(.1),
                        iconColor: Colors.black,
                      ),
                      title: headingTwo(
                        data: '851 ms',
                      textColor: Colors.black
                      ),
                      subtitle: bodyLarge(
                          data: 'R-R interval',
                          textColor: Colors.black.withOpacity(.5)
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Expanded(child: CustomTimeTracker(time: '851ms',
                        isFilled: true,
                        ),),
                         SizedBox(width: 10,),
                        Expanded(child: CustomTimeTracker(time: '830ms',),),
                         SizedBox(width: 10,),
                        Expanded(child: CustomTimeTracker(time: '810ms',),),

                       
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: size.width,
                padding:const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    headingTwo(data: 'Blood Pressure'),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomTrackerChart(),
                  ],
                ),

              ),
            ],
          ),
        )
    );
  }
}
