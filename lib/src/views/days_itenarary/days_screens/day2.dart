import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/components/daybox.dart';

class Day2Screen extends StatefulWidget {
  final String day;
  final String temp;

  const Day2Screen({
    Key? key,
    required this.day,
    required this.temp,
  }) : super(key: key);

  @override
  _Day2ScreenState createState() => _Day2ScreenState();
}

class _Day2ScreenState extends State<Day2Screen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 12.0,
                    right: 12.0,
                    top: 8.0,
                    bottom: 8.0,
                  ),
                  child: Text(
                    widget.day,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      color: kBaseRed,
                      fontWeight: FontWeight.w800,
                      // fontSize: 16,
                    ),
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, top: 8.0, bottom: 8.0),
                  child: Text(
                    widget.temp,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      color: kBaseRed,
                      fontWeight: FontWeight.w800,
                      // fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
              itemCount: _hrs.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return DayScheduleCard(
                  image: "assets/Hotels/d2.png",
                  hrs: _hrs[index],
                  details: _details[index],
                );
              }),
        ),
        const Text(
          'Overnight at Hotel',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 20),
        Image.asset("assets/day_2.png"),
      ],
    );
  }

  final List<String> _details = [
    'Breakfast at Hotel',
    'Annual Sales Conference',
    'Lunch at Hotel',
    'Free Time for Rest',
    'Retro Night Event & Gala Dinner',
  ];

  final List<String> _hrs = [
    '0630- 1030 Hrs',
    '1030 Hrs',
    '1415 Hrs',
    '1430-1900 Hrs',
    '1900 Hrs',
  ];
}
