import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_gradient/image_gradient.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/flight/flight_details.dart';

class FlightBox extends StatelessWidget {
  const FlightBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            CupertinoPageRoute(builder: (_) => const FlightDetailsScreen()));
      },
      child: SizedBox(
        width: getProportionateScreenWidth(145.0),
        child: Stack(
          children: [
            ImageGradient(
              gradient: LinearGradient(
                begin: const Alignment(0.00, -1.00),
                end: const Alignment(0, 1),
                colors: [
                  const Color(0xFF7DC8CE).withOpacity(0.7),
                  const Color(0xFF843B90).withOpacity(0.7),
                  const Color(0xFF0F3039).withOpacity(0.7),
                ],
              ),
              image: Image.asset(
                "assets/flight_bg.png",
                width: getProportionateScreenWidth(145.0),
              ),
            ),
            Positioned(
              left: 1,
              right: 1,
              bottom: 1,
              top: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/dashboard/flight_icn.png",
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Flight Details",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: baseWhitePlain,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
