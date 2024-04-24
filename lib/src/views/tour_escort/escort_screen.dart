import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/tour_escort/components/escort_card.dart';

class TourEscortScreen extends StatefulWidget {
  const TourEscortScreen({Key? key}) : super(key: key);

  @override
  _TourEscortScreenState createState() => _TourEscortScreenState();
}

class _TourEscortScreenState extends State<TourEscortScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
                color: kDarkBlue,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: Icon(
                        Icons.arrow_back_rounded,
                        size: 30,
                        color: baseWhitePlain,
                      ),
                    ),
                  ),
                  Text(
                    "Tour Escorts",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: baseWhitePlain,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),

            /// center
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                    itemCount: _images.length,
                    itemBuilder: (context, index) {
                      return EscortPersonDetailsCard(
                        airline: _airline[index],
                        deptCity: _deptCity[index],
                        pakContact: _pakContact[index],
                        image: _images[index],
                        personName: _names[index],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final List<String> _images = [
    'assets/Tour Escorts/safeer.png',
    'assets/Tour Escorts/khurram.png',
    'assets/danyal.png',
  ];
  final List<String> _names = [
    'Safeer Rasheed',
    'Khuram Ali',
    'Danyal Jawaid',
  ];
  final List<String> _airline = [
    'Emirates Airline',
    'Qatar Airline',
    'Qatar Airline',
  ];
  final List<String> _deptCity = [
    'Karachi',
    'Karachi City',
    'Karachi City',
  ];
  final List<String> _pakContact = [
    'Pak / Whatsapp Contact : +92-333-3358351',
    'Pak / Whatsapp Contact : +92-306-2888737',
    'Pak / Whatsapp Contact : +92-333-9444419',
  ];

}
