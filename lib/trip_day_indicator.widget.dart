import 'dart:math';

import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

class TripDayIndicator extends StatelessWidget {
  const TripDayIndicator({
    super.key,
    required this.totalDaysTextSize,
    required this.totalDaysHeight,
  });

  final double totalDaysTextSize, totalDaysHeight;

  @override
  Widget build(BuildContext context) {
    return DecoratedRow(
      itemSpacing: 8,
      scrollable: true,
      height: 48 - max(0, totalDaysTextSize - totalDaysHeight),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      margin: const EdgeInsets.only(top: 12),
      children: [
        DecoratedColumn(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(height: 1),
          children: [
            const Text('总览'),
            DecoratedText('共6天', height: totalDaysHeight),
          ],
        ),
        for (int i = 0; i < 5; i++)
          DecoratedColumn(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(12),
            ),
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            textStyle: const TextStyle(height: 1),
            children: [
              Text('第 $i 天'),
              DecoratedText('共6天', height: totalDaysHeight),
            ],
          ),
      ],
    );
  }
}
