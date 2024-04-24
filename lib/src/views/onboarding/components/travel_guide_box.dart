import 'package:flutter/cupertino.dart';
import 'package:image_gradient/image_gradient.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/onboarding/components/food.dart';

class TourEscortsBox extends StatelessWidget {
  const TourEscortsBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, CupertinoPageRoute(builder: (_) => const FoodOptions()));
      },
      child: SizedBox(
        width: getProportionateScreenWidth(145.0),
        child: Stack(
          children: [
            ImageGradient(
              image: Image.asset("assets/tg.png"),
                gradient: LinearGradient(
                  begin: const Alignment(0.00, -1.00),
                  end: const Alignment(0, 1),
                  colors: [const Color(0xFFDA3861).withOpacity(0.8), const Color(0xFF3B2666).withOpacity(0.8)],
                ),
            ),
            // Container(
            //   width: 160,
            //   height: 114,
            //   decoration: ShapeDecoration(
            //     gradient: LinearGradient(
            //       begin: const Alignment(0.00, -1.00),
            //       end: const Alignment(0, 1),
            //       colors: [const Color(0xFFDA3861).withOpacity(0.8), const Color(0xFF3B2666).withOpacity(0.8)],
            //     ),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //   ),
            // ),
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
                    "assets/dashboard/tour_g_img.png",
                    scale: 1.5,
                  ),
                  Text(
                    "Tour Escorts",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: baseWhitePlain,
                      fontSize: 16,
                    ),
                  ),                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
