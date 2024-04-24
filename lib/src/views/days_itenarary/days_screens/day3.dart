import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/components/daybox.dart';

class Day3Screen extends StatefulWidget {
  final String day;
  final String temp;

  const Day3Screen({
    Key? key,
    required this.day,
    required this.temp,
  }) : super(key: key);

  @override
  _Day3ScreenState createState() => _Day3ScreenState();
}

class _Day3ScreenState extends State<Day3Screen> {
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
                      left: 12.0, right: 12.0, top: 8.0, bottom: 8.0),
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
              shrinkWrap: true,
              itemCount: _hrs.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return DayScheduleCard(
                  image: "assets/Hotels/d3.png",
                  details: _details[index],
                  hrs: _hrs[index],
                );
              }),
        ),
        const Text(
          'Dinner at own\nOvernight at Hotel',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 20),
        Image.asset("assets/day_3.png"),
      ],
    );
  }

  final List<String> _details = [
    'Buffet Breakfast at hotel',
    'Pick up from hotel for Full Day Genting Highland Tour',
    'Arrival Genting Highland & Entrance to Skyworld Theme Park',
    'Visit Outlet Mall',
    'Transfer back to hotel in Kuala Lumpur',
  ];

  final List<String> _hrs = [
    '0700-0800 Hrs',
    '0830 Hrs',
    '1100 Hrs',
    '1500 Hrs',
    '1700 Hrs ',
  ];
}
