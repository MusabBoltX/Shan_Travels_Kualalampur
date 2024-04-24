import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/hotels/components/hotels_card.dart';

class HotelsScreen extends StatefulWidget {
  const HotelsScreen({Key? key}) : super(key: key);

  @override
  _HotelsScreenState createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 120,
            width: getProportionateScreenWidth(375.0),
            decoration: BoxDecoration(
              color: kDarkBlue,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
              ),
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
                  "Hotels",
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
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  Image.asset("assets/hotel_logo.png", scale: 2),
                  const SizedBox(height: 20),
                  HotelDetailsCard(
                    image: _images[0],
                    phoneNumber: _phoneNumber[0],
                    address: _address[0],
                    hotelName: _hotelName[0],
                    // dateRange: _dateRange[0],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(
                          width: SizeConfig.screenWidth! / 3,
                          child: Image.asset("assets/hotel_bed.png")),
                      const SizedBox(width: 5),
                      const Expanded(
                        child: Text(
                          'All rooms in Mandarin Oriental, Kuala Lumpur are equipped with a TV and bathrobes. Guests at the accommodation can enjoy a buffet breakfast. Speaking Arabic, German, English and French, staff are willing to help at any time of the day at the reception. Popular points of interest near Mandarin Oriental, Kuala Lumpur include Suria KLCC, Kuala Lumpur Convention Center and KLCC Park. The nearest airport is Sultan Abdul Aziz Shah, 15 miles from the hotel, and the property offers a paid airport shuttle service.',
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 9,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: SizeConfig.screenWidth! / 2, child: Image.asset("assets/fac.png")),
                      Expanded(child: Image.asset("assets/hotel_room.png")),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  final List<String> _images = [
    'assets/Hotels/hotel.png',
  ];
  final List<String> _hotelName = [
    'Mandarin Oriental, Kuala Lumpur',
  ];
  final List<String> _address = [
    'Kuala Lumpur City Centre, 50088 Kuala Lumpur, Malaysia',
  ];
  final List<String> _phoneNumber = [
    '+60 (3) 2380 8888',
  ];

// final List<String> _dateRange = [
//   'BURSA (21 - 23 Feb)',
//   '',
//   'CAPPADOCIA (23 - 25 Feb)',
//   'ISTANBUL (25 - 28 Feb)',
// ];
}
