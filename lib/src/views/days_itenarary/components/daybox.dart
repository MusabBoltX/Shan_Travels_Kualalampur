import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';

class DayScheduleCard extends StatelessWidget {
  final String image;
  final String details;
  final String hrs;

  const DayScheduleCard({
    Key? key,
    required this.image,
    required this.details,
    required this.hrs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: kDarkBlue,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Text(
              hrs,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: baseWhitePlain,
                fontSize: 15,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    details,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
