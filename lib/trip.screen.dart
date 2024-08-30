import 'package:flutter/material.dart';
import 'package:interview/title_bar.widget.dart';
import 'package:interview/trip_day_indicator.widget.dart';
import 'package:interview/trip_day_list.widget.dart';

class TripScreen extends StatelessWidget {
  const TripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          TitleBar(),
          TripDayIndicator(),
          TripDayList(),
        ],
      ),
    );
  }
}
