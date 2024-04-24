import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/onboarding/components/dosdonts_bos.dart';
import 'package:phoenix_travel_app/src/views/onboarding/components/escort_box.dart';
import 'package:phoenix_travel_app/src/views/onboarding/components/flight_box.dart';
import 'package:phoenix_travel_app/src/views/onboarding/components/hotels_box.dart';
import 'package:phoenix_travel_app/src/views/onboarding/components/itenarary_box.dart';
import 'package:phoenix_travel_app/src/views/onboarding/components/travel_guide_box.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {

  @override
  void initState() {
    // Future.delayed(const Duration(seconds: 2), () {
    //   showDialog(
    //       context: context,
    //       builder: (BuildContext context) {
    //         return const CustomDialogBox(
    //           img: 'assets/dialog.jpeg',
    //         );
    //       });
    // });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50.0),
                bottomLeft: Radius.circular(50.0),
              ),
              color: kDarkBlue,
            ),
            child: Center(
              child: Text(
                "Welcome to Malaysia",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: baseWhitePlain,
                  fontSize: 28,
                ),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10.0)),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
          //   child: Text(
          //     "Esteemed sales partners, we welcome you to the memorable Malaysia trip",
          //     textAlign: TextAlign.center,
          //     style: Theme.of(context).textTheme.subtitle2,
          //   ),
          // ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /// Itenarary Box
                    const ItenararyBox(),
                    const SizedBox(height: 10),
                    /// 4 Boxes
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /// Flight and Escort Box
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            EscortBox(),
                            SizedBox(height: 10),
                            FlightBox(),
                          ],
                        ),
                        const SizedBox(width: 10),
                        /// Hotel and Travel Box
                        Column(
                          children: const [
                            HotelsBox(),
                            SizedBox(height: 10),
                            FoodssBox(),
                          ],
                        ),
                      ],
                    ),
                    /// Dos and Don'ts
                    const SizedBox(height: 10),
                    const DosDontBox(),
                  ],
                ),
              ),
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
    );
  }


}
