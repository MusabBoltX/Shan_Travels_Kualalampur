import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/views/onboarding/onboarding_screen.dart';

class SalesMarketing extends StatelessWidget {
  const SalesMarketing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBaseRed,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 20),
            Text(
              "Sales and Marketing",
              textAlign: TextAlign.center,
              style: TextStyle(
                backgroundColor: Colors.white,
                fontWeight: FontWeight.bold,
                color: kBaseRed,
                fontSize: 28,
              ),
            ),
            const Text(
              "Conference Kualalampur",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 28,
              ),
            ),
            const Text(
              "23 - 24",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Champions! I could not be more grateful and fortunate to be a part of this team; you have a big contribution in where this organization is today. Your efforts, your dedication and your commitment have set this organization on the road to ever greater heights!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "This event will give us an opportunity to meet in person and learn from best practices so together we can take this company higher and farther. Each and every one of you is an ambassador for Shan Foods and internationally we are ambassadors for our beloved country. As Pakistan's No.1 Food and spice company, it is imperative that we act in the best possible way so that we can portray our country and company proudly.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Let's collectively ensure that we keep ourselves safe and urge others to do the same as well.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const Text(
              "\nSome of the most popular restaurants in Genting Highlands include:",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const Text(
              "\nMrDakgalbi At Skyavenue In Genting\nLoong Kee Restaurant\nCoffee Terrace\nAyuAwana\nBurger & Lobsteri\n",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const Text(
              "\nGenting Highlands is known for some of its popular attractions, which include:sky casino",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const Text(
              "\nGenting SkyWorlds Theme Park\nGenting Highlands Premium Outlets\nSkytropolis Indoor Theme Park\nGenting Skyway\n",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton.extended(
            backgroundColor: Colors.white,
            heroTag: 'b',
            onPressed: () {
              Navigator.pop(context);
            },
            label: Text(
              "Back",
              style: TextStyle(
                color: kBaseRed,
              ),
            ),
          ),
          FloatingActionButton.extended(
            backgroundColor: Colors.white,
            heroTag: 'n',
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (_) => const OnboardScreen(),
                  // builder: (_) => const SalesMarketing(),
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
        ],
      ),
    );
  }
}
