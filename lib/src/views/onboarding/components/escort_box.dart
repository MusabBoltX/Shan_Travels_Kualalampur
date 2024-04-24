import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_gradient/image_gradient.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/tour_escort/escort_screen.dart';

class EscortBox extends StatelessWidget {
  const EscortBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            CupertinoPageRoute(builder: (_) => const TourEscortScreen()));
      },
      child: SizedBox(
        width: getProportionateScreenWidth(145.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ImageGradient(
              image: Image.asset(
                "assets/escorts_bg.png",
                // width: SizeConfig.screenWidth! / 2.2,
              ),
              gradient: LinearGradient(
                begin: const Alignment(-0.00, -1.00),
                end: const Alignment(0, 1),
                colors: [
                  const Color(0xFF843B90).withOpacity(0.7),
                  const Color(0xFFDA3861)
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/dashboard/t_escort.png",
                ),
                const SizedBox(height: 10),
                Text(
                  "Tour Escorts",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: baseWhitePlain,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
