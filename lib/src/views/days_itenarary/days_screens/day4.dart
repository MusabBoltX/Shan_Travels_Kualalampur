import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/components/daybox.dart';

class Day4Screen extends StatefulWidget {
  final String day;
  final String temp;

  const Day4Screen({
    Key? key,
    required this.day,
    required this.temp,
  }) : super(key: key);

  @override
  _Day4ScreenState createState() => _Day4ScreenState();
}

class _Day4ScreenState extends State<Day4Screen> {
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
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _hrs.length,
            itemBuilder: (context, index) {
              return DayScheduleCard(
                image: "assets/Hotels/d4.png",
                details: _details[index],
                hrs: _hrs[index],
              );
            },
          ),
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
        Image.asset("assets/day_4.png"),
      ],
    );
  }

  final List<String> _details = [
    'Buffet Breakfast Box',
    'EK 345: Departure From hotel to airport ',
    'TG 345: Departure From hotel to airport ',
    'Check Out ',
    'Mitsui outlet mall',
    'QR 853: Pick from mall & rop to airport',
  ];

  final List<String> _hrs = [
    '0600 Hrs',
    '0600 Hrs',
    '0900 Hrs',
    '1000 Hrs',
    '1030 Hrs',
    '1700 Hrs',
  ];
}
