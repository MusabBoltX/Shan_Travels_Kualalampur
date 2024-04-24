import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_gradient/image_gradient.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/itenarary.dart';

class ItenararyBox extends StatelessWidget {
  const ItenararyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            CupertinoPageRoute(builder: (_) => const ItenararyScreen()));
      },
      child: SizedBox(
        width: getProportionateScreenWidth(300.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ImageGradient(
              gradient: const LinearGradient(
                begin: Alignment(1.00, 0.00),
                end: Alignment(-1, 0),
                colors: [
                  Color(0xFF843B90),
                  Color(0xFFDA3861),
                  Color(0xFFF4AD5C),
                ],
              ),
              image: Image.asset(
                "assets/itenary_bg.png",
                width: SizeConfig.screenWidth!,
              ),
            ),
            // Container(
            //   width: double.infinity,
            //   height: 130,
            //   alignment: Alignment.center,
            //   decoration: ShapeDecoration(
            //     gradient: LinearGradient(
            //       begin: const Alignment(1.00, 0.00),
            //       end: const Alignment(-1, 0),
            //       colors: [
            //         const Color(0xFF843B90).withOpacity(0.5),
            //         const Color(0xFFDA3861).withOpacity(0.5),
            //         const Color(0xFFF4AD5C).withOpacity(0.5),
            //       ],
            //     ),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(19),
            //     ),
            //   ),
            // ),

            // Image.asset(
            //   "assets/dashboard/iten_filter.png",
            //   color: Colors.white.withOpacity(0.4),
            //   colorBlendMode: BlendMode.modulate,
            // ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/dashboard/Itenarary_img.png",
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Itenary",
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
