import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/days_screens/day1.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/days_screens/day2.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/days_screens/day3.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/days_screens/day4.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/days_screens/day5.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/days_screens/day6.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/days_screens/day7.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/days_screens/day8.dart';

class ItenararyScreen extends StatefulWidget {
  const ItenararyScreen({
    Key? key,
  }) : super(key: key);

  @override
  _ItenararyScreenState createState() => _ItenararyScreenState();
}

class _ItenararyScreenState extends State<ItenararyScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: ListView(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  bottomLeft: Radius.circular(40.0),
                ),
                color: kDarkBlue,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            right: 20.0,
                          ),
                          child: Icon(
                            Icons.arrow_back_rounded,
                            size: 30,
                            color: baseWhitePlain,
                          ),
                        ),
                      ),
                      Text(
                        "Tour Itinerary",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: baseWhitePlain,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            _dayCard(daysList[0], 0),
                            _dayCard(daysList[1], 1),
                            _dayCard(daysList[2], 2),
                            _dayCard(daysList[3], 3),
                          ],
                        )),
                  ),
                ],
              ),
            ),

            /// center
            if (selectedIndex == 0)
              Day1Screen(
                day: dateList[0],
                temp: tempList[0],
              )
            else if (selectedIndex == 1)
              Day2Screen(
                day: dateList[1],
                temp: tempList[1],
              )
            else if (selectedIndex == 2)
              Day3Screen(
                day: dateList[2],
                temp: tempList[2],
              )
            else if (selectedIndex == 3)
              Day4Screen(
                day: dateList[3],
                temp: tempList[3],
              ),
            // else if (selectedIndex == 4)
            //   Day5Screen(day: dateList[4], temp: tempList[4],)
            // else if (selectedIndex == 5)
            //   Day6Screen(day: dateList[5], temp: tempList[5],)
            // else if (selectedIndex == 6)
            //   Day7Screen(day: dateList[6], temp: tempList[6],)
            // else if (selectedIndex == 7)
            //   Day8Screen(day: dateList[7], temp: tempList[7],)

            /// center

          ],
        ),
        // bottomNavigationBar: Container(
        //   color: baseWhitePlain,
        //   width: getProportionateScreenWidth(375.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //       SizedBox(
        //         width: getProportionateScreenWidth(120.0),
        //         child: Image.asset(
        //           "assets/logo.png",
        //         ),
        //       ),
        //       SizedBox(
        //         width: getProportionateScreenWidth(120.0),
        //         child: Image.asset(
        //           "assets/bottom_icn.png",
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }

  Widget _dayCard(day, i) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = i;
        });
      },
      child: Card(
        color: selectedIndex == i ? kDarkBlue : baseWhitePlain,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 5.0,
            bottom: 5.0,
          ),
          child: Text(
            day,
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: selectedIndex == i ? baseWhitePlain : kDarkBlue,
              // fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  List<String> daysList = [
    'Day 01',
    'Day 02',
    'Day 03',
    'Day 04',
  ];

  List<String> dayImages = [
    'assets/day1.png',
    'assets/day2.png',
    'assets/day3.png',
    'assets/day3.png',
  ];

  final List<String> tempList = [
    '33 °C / 22 °C',
    '33 °C / 22 °C',
    '34 °C / 22 °C',
    '34 °C / 22 °C',
  ];

  final List<String> dateList = [
    '25 April 2024',
    '26 April 2024',
    '27 April 2024',
    '28 April 2024',
  ];
}
