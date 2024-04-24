import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/views/onboarding/sales_market.dart';

class Genting extends StatelessWidget {
  const Genting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 20),
          Text(
            "Genting",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kBaseRed,
              fontSize: 28,
            ),
          ),
          // const SizedBox(height: 10),
          Text(
            "Kulalampur",
            textAlign: TextAlign.center,
            style: TextStyle(
              backgroundColor: kBaseRed,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          Image.asset("assets/g1.png"),
          const SizedBox(height: 20),
          const Text(
            "Genting Highlands is an integrated resort development comprising hotels, casinos, shopping malls and the latest Skyworlds Theme Park in Pahang, perched on the peak of Gunung Ulu Kali at 1,800 meters high. Nestled near the border of Selangor about 35km away from Kuala Lumpur, Genting represents a popular weekend getaway from KL, connected by highways, roads and cable car via Awana Skyway.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 20),
          Image.asset("assets/g2.png"),
          const SizedBox(height: 20),
          const Text(
            "There are currently three theme parks at Resort World Genting, Genting SkyWorlds, SkytropolisFunland and Genting Grand Indoor Theme Park.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 20),
          Image.asset("assets/g3.png"),
          const SizedBox(height: 20),
          const Text(
            "There are currently five shopping malls at the resort, Awana Sky Central, First World Plaza, Genting Highlands Premium Outlets, SkyAvenue,and Genting Grand Complex. Two shopping malls, AwanaSkyCentral and Genting Highlands Premium Outlet, is near Gohtong Jaya and are connected by two link bridges. The three remaining malls are situated at the mountain top.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 14,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              decoration: ShapeDecoration(
                color: const Color(0xFFDB1E25),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                shadows: const [
                  BoxShadow(
                    color: Color(0x28000000),
                    blurRadius: 7,
                    offset: Offset(0, 0),
                    spreadRadius: 3,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    Text(
                      "\nSome of the most popular restaurants in Genting Highlands include:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "\nMrDakgalbi At Skyavenue In Genting\nLoong Kee Restaurant\nCoffee Terrace\nAyuAwana\nBurger & Lobsteri\n",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              decoration: ShapeDecoration(
                color: const Color(0xFFDB1E25),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                shadows: const [
                  BoxShadow(
                    color: Color(0x28000000),
                    blurRadius: 7,
                    offset: Offset(0, 0),
                    spreadRadius: 3,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    Text(
                      "\nGenting Highlands is known for some of its popular attractions, which include:sky casino",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "\nGenting SkyWorlds Theme Park\nGenting Highlands Premium Outlets\nSkytropolis Indoor Theme Park\nGenting Skyway\n",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton.extended(
            backgroundColor: kBaseRed,
            heroTag: 'back',
            onPressed: () {
              Navigator.pop(context);
            },
            label: const Text(
              "Back",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          FloatingActionButton.extended(
            backgroundColor: kBaseRed,
            heroTag: 'next',
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  // builder: (_) => const OnboardScreen(),
                  builder: (_) => const SalesMarketing(),
                ),
              );
            },
            label: const Text(
              "Next",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
