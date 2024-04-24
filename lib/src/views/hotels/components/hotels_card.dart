import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';

class HotelDetailsCard extends StatelessWidget {
  final String image;
  final String hotelName;
  final String phoneNumber;
  final String address;

  // final String dateRange;

  const HotelDetailsCard({
    Key? key,
    required this.image,
    required this.phoneNumber,
    required this.address,
    required this.hotelName,
    // required this.dateRange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 150.0,
      // width: getProportionateScreenWidth(340.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
              ),
              padding: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  // textDirection: TextDirection.ltr,
                  mainAxisSize: MainAxisSize.min,
                  // textBaseline: TextBaseline.alphabetic,
                  children: [
                    /// dateRange
                    // Flexible(
                    //   child: Text(
                    //     dateRange,
                    //     // textAlign: TextAlign.center,
                    //     overflow: TextOverflow.visible,
                    //     style: TextStyle(
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.black,
                    //       // fontSize: 16,
                    //     ),
                    //   ),
                    // ),

                    Text(
                      hotelName,
                      // textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),

                    const SizedBox(height: 10),

                    /// address
                    Flexible(
                      child: Text(
                        'Address :  ' + address + '\n',
                        // textAlign: TextAlign.center,
                        overflow: TextOverflow.visible,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          // fontSize: 16,
                        ),
                      ),
                    ),

                    // const SizedBox(height: 5),

                    /// phoneNumber
                    Flexible(
                      child: Text(
                        'Phone :  ' + phoneNumber + '\n',
                        // textAlign: TextAlign.center,
                        overflow: TextOverflow.visible,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          // fontSize: 16,
                        ),
                      ),
                    ),
                    // const SizedBox(height: 5),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
