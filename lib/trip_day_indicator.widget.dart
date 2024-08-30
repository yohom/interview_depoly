import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

class TripDayIndicator extends StatelessWidget {
  const TripDayIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedRow(
      itemSpacing: 8,
      scrollable: true,
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      sliver: true,
      children: [
        DecoratedColumn(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(12),
          ),
          children: const [
            Text('总览'),
            Text('共6天'),
          ],
        ),
        for (int i = 0; i < 5; i++)
          DecoratedColumn(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(12),
            ),
            children: [
              Text('第 $i 天'),
              const Text('共6天'),
            ],
          ),
      ],
    );
  }
}
