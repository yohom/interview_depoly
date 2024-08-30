import 'dart:math';

import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';
import 'package:interview/title_bar.widget.dart';
import 'package:interview/trip_day_indicator.widget.dart';
import 'package:interview/trip_day_list.widget.dart';

class TripScreen extends StatefulWidget {
  const TripScreen({super.key});

  @override
  State<TripScreen> createState() => _TripScreenState();
}

class _TripScreenState extends State<TripScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverPersistentHeaderDelegate(
              safeAreaTop: context.padding.top,
            ),
          ),
          const TripDayList(),
        ],
      ),
    );
  }
}

class _SliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  _SliverPersistentHeaderDelegate({required this.safeAreaTop});

  final double safeAreaTop;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    // 大标题高度
    final titleHeight = max(.0, 48 - shrinkOffset);
    // 大标题是否已收起
    final titleShrunk = shrinkOffset > 48;
    // 总天数高度(在大标题收起之后再收起)
    const totalDaysTextSize = 14.0;
    final totalDaysHeight =
        titleShrunk ? max(.0, 48 - shrinkOffset + totalDaysTextSize) : 14.0;
    L.i('TitleBar:shrinkOffset: $shrinkOffset, maxExtent: $maxExtent, minExtent: $minExtent, titleHeight: $titleHeight, subtitleHeight: $totalDaysHeight');
    return DecoratedColumn(
      children: [
        TitleBar(titleHeight: titleHeight),
        TripDayIndicator(
          totalDaysTextSize: totalDaysTextSize,
          totalDaysHeight: totalDaysHeight,
        ),
      ],
    );
  }

  @override
  double get maxExtent => 116 + 56 + 12 + safeAreaTop;

  @override
  double get minExtent => 68 + 42 + 12 + safeAreaTop;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
