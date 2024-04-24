import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/flight/components/flight_details_card.dart';

class FlightDetailsScreen extends StatefulWidget {
  const FlightDetailsScreen({Key? key}) : super(key: key);

  @override
  _FlightDetailsScreenState createState() => _FlightDetailsScreenState();
}

class _FlightDetailsScreenState extends State<FlightDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 80,
              width: getProportionateScreenWidth(375.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  bottomLeft: Radius.circular(40.0),
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
                    "Flight Details",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: baseWhitePlain,
                      fontSize: 28,
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
                    itemCount: _exGroup.length,
                    itemBuilder: (context, index) {
                      return FlightDetailsCard(
                        exGroup: _exGroup[index],
                        airline: _airline[index],
                        cities: _cities[index],
                        c1: _c1[index],
                        c2: _c2[index],
                        c3: _c3[index],
                        c4: _c4[index],
                      );
                    }),
              ),
            ),
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

  final List<String> _exGroup = [
    'Ex-Karachi',
    'Ex-Karachi',
    'Ex-Lahore',
    'Ex-Islamabad',
  ];
  final List<String> _cities = [
    'Karachi',
    'Karachi',
    'Lahore',
    'Islamabad',
  ];
  final List<String> _airline = [
    'Emirates Airline',
    'Qatar Airline',
    'Thai Airline',
    'Thai Airline',
  ];

  final List<String> _c1 = [
    'EK 601\nEK 344\nEK 345\nEK 602',
    'QR 611\nQR 844\nQR 853\nQR 610',
    'TG 346\nTG 415\nTG 416\nTG 345',
    'TG 346\nTG 415\nTG 416\nTG 349',
  ];

  final List<String> _c2 = [
    '25APR\n25APR\n29APR\n29APR',
    '25APR\n25APR\n29APR\n30APR',
    '25APR\n26APR\n29APR\n29APR',
    '25APR\n26APR\n29APR\n29APR',
  ];

  final List<String> _c3 = [
    'KHI DXB\nDXB KUL\nKUL DXB\nDXB KHI',
    'KHI DOH\nDOH KUL\nKUL DOH\nDOH KHI',
    'LHE BKK\nBKK KUL\nKUL BKK\nBKK LHE',
    'LHE BKK\nBKK KUL\nKUL BKK\nBKK ISB',
  ];

  final List<String> _c4 = [
    '1215  1320\n2115  0840\n1015  1310\n1800  2105',
    '1025  1055\n1915  0750+1\n2025  2245\n0215  0650',
    '2345  0610\n0845  1155\n1305  1410\n1925  2240',
    '2345  0610\n0845  1155\n1320  1430\n1900  2210',
  ];

}
