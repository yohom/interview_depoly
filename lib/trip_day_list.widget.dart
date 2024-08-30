import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

class TripDayList extends StatelessWidget {
  const TripDayList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.list(
      children: [
        for (int i = 0; i < 6; i++) _TripDay(dayIndex: i),
      ],
    );
  }
}

class _TripDay extends StatelessWidget {
  _TripDay({required this.dayIndex}) : super(key: ValueKey(dayIndex));

  final int dayIndex;

  @override
  Widget build(BuildContext context) {
    return DecoratedColumn(
      itemSpacing: 8,
      padding: const EdgeInsets.all(12),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('第$dayIndex天'),
        for (int i = 0; i < 5; i++)
          DecoratedText(
            '项目 $i',
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
          )
      ],
    );
  }
}
