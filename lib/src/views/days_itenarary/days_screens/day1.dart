import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/components/daybox.dart';

class Day1Screen extends StatefulWidget {
  final String day;
  final String temp;

  const Day1Screen({
    Key? key,
    required this.day,
    required this.temp,
  }) : super(key: key);

  @override
  _Day1ScreenState createState() => _Day1ScreenState();
}

class _Day1ScreenState extends State<Day1Screen> {
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
                    left: 12.0,
                    right: 12.0,
                    top: 8.0,
                    bottom: 8.0,
                  ),
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
                image: "assets/Hotels/d1.png",
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
        Image.asset("assets/day_1.png"),
      ],
    );
  }

  final List<String> _details = [
    'QR 844: Pick up from airport, meet and assist and transfer to Hotel with en-route brunch at Haveli Restaurant\n\nEK 344: Pick up from airport, meet and assist and transfer to Hotel with en-route brunch at Haveli Restaurant\n\nTG 415: Pick up from airport, meet and assist and transfer to Hotel with en-route brunch at Haveli Restaurant ',
    'Check Inn at Hotel',
    'Free Time For Rest\npanaromic city tour',
    'City tour of Kualu Lumpur',
    'Dinner at Aras KL Tower Restaurant',
  ];
  final List<String> _hrs = [
    '0750 Hrs\n\n\n0840 Hrs\n\n\n1155 Hrs',
    '1430 Hrs',
    '1500 - 1700 Hrs',
    '1730 - 1930 Hrs',
    '1930 Hrs',
  ];
}
