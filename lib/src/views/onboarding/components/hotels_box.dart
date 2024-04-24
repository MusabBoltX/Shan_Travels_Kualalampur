import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_gradient/image_gradient.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/hotels/hotels_screen.dart';

class HotelsBox extends StatelessWidget {
  const HotelsBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, CupertinoPageRoute(builder: (_) => const HotelsScreen()));
      },
      child: SizedBox(
        width: getProportionateScreenWidth(145.0),
        child: Stack(
          fit: StackFit.loose,
          alignment: Alignment.topCenter,
          children: [
            ImageGradient(
              gradient: LinearGradient(
                begin: const Alignment(0.68, -0.73),
                end: const Alignment(-0.68, 0.73),
                colors: [
                  // Colors.white,
                  const Color(0xFFF4AD5C).withOpacity(0.8),
                  const Color(0xFFDA3861).withOpacity(0.8)
                ],
              ),
              image: Image.asset(
                "assets/hotels_bg.png",
                width: getProportionateScreenWidth(145.0),
                fit: BoxFit.cover,
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
                    "assets/dashboard/hotels_icn.png",
                    scale: 1.2,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Hotels",
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
