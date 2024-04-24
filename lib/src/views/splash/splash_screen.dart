import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';
import 'package:phoenix_travel_app/src/views/onboarding/genting.dart';
import 'package:phoenix_travel_app/src/views/onboarding/onboard_new.dart';
import 'package:phoenix_travel_app/src/views/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // Future.delayed(const Duration(seconds: 5), () {
    // Navigator.pushReplacement(context, CupertinoPageRoute(builder: (_) => const OnboardScreen()));
    // context, CupertinoPageRoute(builder: (_) => const OnboardNew()));
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBaseRed,
      body: Center(
        // width: getProportionateScreenWidth(375.0),
        // height: getProportionateScreenHeight(812.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 40),
              Image.asset(
                "assets/logo.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 40),
              Text(
                "Welcome to Kualalampur",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: baseWhitePlain,
                  fontSize: 28,
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "Kuala Lumpur, is the capital of Malaysia. It is well known as a melting pot of Southeast Asia where many different races and cultures make the city of Kuala Lumpur a vibrant place to visit. Once a British colony, you see art deco buildings mixed with modern structures making this an interesting city to explore on foot. Due to a multiracial society, choices of food are incredible while different places of worship leave you in awe as they are generally littered throughout the city.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  height: 1.8,
                  fontSize: 16,
                  fontFamily: 'ABeeZee',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              // builder: (_) => const OnboardScreen(),
              builder: (_) => const Genting(),
            ),
          );
        },
        label: Text(
          "Next",
          style: TextStyle(
            color: kBaseRed,
          ),
        ),
      ),
    );
  }
}
