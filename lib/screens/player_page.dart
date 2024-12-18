import 'package:flutter/material.dart';
import 'package:newpro/utils/screen_utils.dart';

import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../utils/app_theme.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({super.key});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
 var value = 30.0;

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      animationDuration: 1,
      enableLoadingAnimation: true,
      axes: [
        RadialAxis(
          useRangeColorForAxis: true,
          startAngle: 0,
          endAngle: 180,
          canRotateLabels: false,
          interval: 10,
          isInversed: false,
          minimum: 0,
          maximum: 100,
          showLabels: false,
          showTicks: true,
          showAxisLine: true,
          ranges: [
            GaugeRange(
                startValue: 0,
                endValue: value,
                color: appTheme.amber,
            )
          ],
          pointers: [
            MarkerPointer(
              color: appTheme.amber,
              borderWidth:20 ,
              value: value,
              onValueChanged: (value) {
                setState(() {
                  value = value;
                });
              },
              enableAnimation: true,
              enableDragging: true,
              markerType: MarkerType.circle,
              markerWidth: 30,
              markerHeight: 30,
            )
          ],
          annotations: [
            GaugeAnnotation(
              horizontalAlignment: GaugeAlignment.center,
                widget: Container(
                  width: 250.w,
                  height: 250.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(500),
                    color: appTheme.ark
                  ),
                ))
          ],
        )
      ],
    );
  }
}
