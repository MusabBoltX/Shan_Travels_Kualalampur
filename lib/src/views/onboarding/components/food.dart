import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';

class FoodOptions extends StatefulWidget {
  const FoodOptions({Key? key}) : super(key: key);

  @override
  State<FoodOptions> createState() => _FoodOptionsState();
}

class _FoodOptionsState extends State<FoodOptions> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: kBaseRed,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 20),
              const Text(
                "Food Options in",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
              Text(
                "Kualalampur",
                textAlign: TextAlign.center,
                style: TextStyle(
                  backgroundColor: Colors.white,
                  fontWeight: FontWeight.bold,
                  color: kBaseRed,
                  fontSize: 35,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    color: Colors.white,
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
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "\nChinese Halal Restaurants",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          "\n1.Lai Po Heen"
                          "\n2.Al Amber Chinese Muslim Restaurant"
                          "\n3.Lamb Shepherd Restaurant"
                          "\n4.Anas Chinese Muslim Restaurant\n\n",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    color: Colors.white,
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
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "\nFast Food",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          "\n1.Burger on 16"
                          "\n2.My Burger Lab oug"
                          "\n3.Damascus Restoran"
                          "\n4.KGB Bangsar"
                          "\n5.Subway"
                          "\n6.Texas Chicken Damansara Utama"
                          "\n7.KGB - Killer Gourmet Burgers"
                          "\n8.4 Fingers Crispy Chicken"
                          "\n9.McDonalds"
                          "\n10.Carl's Jr"
                          "\n11.Shawarma Damascus"
                          "\n12.Gindaco"
                          "\n13.KFC"
                          "\n14.Obrien's Irish Sandwich Bar"
                          "15.Nandos\n\n",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    color: Colors.white,
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
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "\nPakistani /Indian Food",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          "\n1.BBQ Nights"
                          "\n2.Bar B Q Tonight Malaysia"
                          "\n3.RestoranBeriani Asif"
                          "\n4.Sheesh Mahal"
                          "\n5.UK Asia Pakistani"
                          "\n6.Pak Punjab"
                          "\n7.Najia's Pakistani Tawa & Grill"
                          "8.Lahore Restaurant\n\n",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ));
  }

//   static const String _markdownData = """
// - Please keep COVID Vaccination Card / PCR Test Report with you, in order to show at the airports on Departure / Arrival
// - Passports must be kept in the safe box in the hotel’s rooms. There is no need to carry the passports during the tours
// - Please keep the hotel visiting card / address details handy, when you go out from the hotel
// - Avoid carrying valuables during tours and shopping outings
// - At all airports across Pakistan, the limit for the currency being carried is PKR 3,000/-. The value of any foreign currency being carried should not exceed USD 10,000/-
// - Baggage Allowance (Economy Class):  Check-in Baggage: 30 Kg (for International Flight) / 25 Kg (Domestic Flight) Hand Baggage: 7 Kg
// - Medicines need to be carried with a proper doctor’s prescription (for both Hand-Carry and Check-In luggage)
// - If you are carrying Liquids in your hand carry, please ensure that the container hold no more than 100ml
// - Carrying Cigarette Lighters in your hand carry or check-in baggage, is strictly prohibited
// - Keep Warm Clothes (Jacket/Gloves/Socks)
// - Please ensure that you carry the necessary travel adapters and plugs for your charging devices
// - Currency can be exchanged from local money changer in Turkey. Current Exchange Rate:  EUR to Turkish LIRA: 15.53 USD to Turkish LIRA: 13.64
// """;
}
