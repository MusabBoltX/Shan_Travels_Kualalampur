import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/views/days_itenarary/itenarary.dart';
import 'package:phoenix_travel_app/src/views/flight/flight_details.dart';
import 'package:phoenix_travel_app/src/views/hotels/hotels_screen.dart';
import 'package:phoenix_travel_app/src/views/onboarding/components/custom_button.dart';
import 'package:phoenix_travel_app/src/views/tour_escort/escort_screen.dart';
import 'package:phoenix_travel_app/src/views/travel_guide/dos_and_donts.dart';
import 'package:phoenix_travel_app/src/views/travel_guide/travel_guide.dart';

class OnboardNew extends StatefulWidget {
  const OnboardNew({Key? key}) : super(key: key);

  @override
  State<OnboardNew> createState() => _OnboardNewState();
}

class _OnboardNewState extends State<OnboardNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/splash_bg.png",
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Positioned(
            left: 40,
            top: 100,
            child: Text(
              "Welcome to\nKuala lampur",
              style: TextStyle(
                color: kDarkBlue,
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomButton(
              onTap: () {
                Navigator.push(context, CupertinoPageRoute(builder: (_) => const ItenararyScreen()));
              },
              child: const Text(
                "Itenary",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            CustomButton(
              onTap: () {
                Navigator.push(context, CupertinoPageRoute(builder: (_) => const TourEscortScreen()));
              },
              child: const Text(
                "Tour Escorts",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            CustomButton(
              onTap: () {
                Navigator.push(context, CupertinoPageRoute(builder: (_) => const FlightDetailsScreen()));
              },
              child: const Text(
                "Flight Details",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            CustomButton(
              onTap: () {
                Navigator.push(context, CupertinoPageRoute(builder: (_) => const HotelsScreen()));
              },
              child: const Text(
                "Hotels",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            CustomButton(
              onTap: () {
                Navigator.push(context, CupertinoPageRoute(builder: (_) => const TravelGuideScreen()));
              },
              child: const Text(
                "Travel Guide",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            CustomButton(
              onTap: () {
                Navigator.push(context, CupertinoPageRoute(builder: (_) => const DosAndDonts()));
              },
              child: const Text(
                "Dos and Don'ts",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
