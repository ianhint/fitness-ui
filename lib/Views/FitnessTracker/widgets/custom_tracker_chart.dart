import 'package:fitness/utils/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

class CustomTrackerChart extends StatelessWidget {
  const CustomTrackerChart({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map>ismailday=[
      {
        'value':80.0,
        'index':0,
      },
      {
        'value':40.0,
        'index':1,
      },
      {
        'value':80.0,
        'index':2,
      },
      {
        'value':55.0,
        'index':3,
      },
      {
        'value':85.0,
        'index':4,
      },
      {
        'value':45.0,
        'index':5,
      },
      {
        'value':65.0,
        'index':6,
      },
    ];
    return SizedBox(
      height: 150,
      child: BarChart(
        BarChartData(
          maxY: 100,
          minY: 0,
          gridData:const FlGridData(
            show: false,
          ) ,
          titlesData: const FlTitlesData(
            show: true,
            topTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              )
            ),
            leftTitles:  AxisTitles(
                sideTitles: SideTitles(
                  showTitles: false,
                )
            ),
            rightTitles:  AxisTitles(
                sideTitles: SideTitles(
                  showTitles: false,
                )
            ),
          ),

          barGroups: ismailday
              .map(
                (element) => BarChartGroupData(
                x: element['index']+1,
                  barRods: [
                    BarChartRodData(
                        toY: element['value'],
                    color: AppColor.primaryColor,
                      width: 40,
                      borderRadius: BorderRadius.circular(8),
                      backDrawRodData: BackgroundBarChartRodData(
                        color: AppColor.secondaryColor,
                        show: true,
                        toY: 100,
                      )
                    )
                  ]
                ),
            )
                .toList()
        ),
      ),
    );
  }
}
