import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:phoenix_travel_app/src/core/constants.dart';
import 'package:phoenix_travel_app/src/core/size_config.dart';

class DosAndDonts extends StatelessWidget {
  const DosAndDonts({Key? key}) : super(key: key);

  // Recommended to carry: Sunblock SPF 50+, Cap / Hat, Sunglasses, Mosquitto repellant, OTC Medicines (Panadol, Disprin etc)
  // For Gala Dinner: Dress code as per ppt
  // Swim Wear - must wear proper swimming costume while swimming at the hotel pool or the beach (Strictly no speedos)

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kDarkBlue,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
                // gradient: LinearGradient(
                //   begin: Alignment.bottomCenter,
                //   end: Alignment.topCenter,
                //   colors: [
                //     baseBlackPure,
                //     basePurpleDark,
                //   ],
                // ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: Icon(
                        Icons.arrow_back_rounded,
                        size: 30,
                        color: baseWhitePlain,
                      ),
                    ),
                  ),
                  Text(
                    "Dos and Don'ts",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: baseWhitePlain,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Markdown(data: _markdownData),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static const String _markdownData = """
Dos:
  
- Recommended to carry: Sunblock SPF 50+, Cap / Hat, Sunglasses, Mosquitto repellant, OTC Medicines (Panadol, Disprin etc)
- For Gala Dinner: Dress code as per ppt 
- Swim Wear - must wear proper swimming costume while swimming at the hotel pool or the beach (Strictly no speedos) 

Don'ts:
  
- Smoking is not allowed in hotel rooms 
- Be extra cautious when purchasing grocery, tobacco items (extremely strict penalties on drugs)
- Don’t carry water bottle or perfume more than 60ml in hand carry while onboarding
- Don’t carry extra luggage. 20KG luggage + 7KG hand carry allowed only
""";
}
