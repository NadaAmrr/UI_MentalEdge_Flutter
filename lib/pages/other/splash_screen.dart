import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentaledge_ui/utils/constants.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bgSecColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(
              '${Constants.svgPath}/topLeft_splash.svg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset("${Constants.svgPath}/logo.svg"),
                  const SizedBox(height: 48,),
                  const Text(
                    "Mental Edge",
                    style: TextStyle(
                      fontFamily: Constants.fontFamily,
                      color: Constants.txtPrimaryColor,
                      fontWeight: Constants.bold,
                      fontSize: Constants.s37,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Text(
                    "Healthy life is having a healthy mind so build a healthy mind then the healthy body.",
                    style: TextStyle(
                      fontFamily: Constants.fontFamily,
                      color: Constants.txtSecColor,
                      fontWeight: Constants.regular,
                      fontSize: Constants.s16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Constants.bgAccentColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20), // Set the padding
                      ),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                          fontFamily: Constants.fontFamily,
                          color: Colors.black,
                          fontWeight: Constants.medium,
                          fontSize: Constants.s18,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  const Text(
                    "Terms and conditions",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: Constants.regular,
                      fontSize: Constants.s16,
                      color: Constants.txtPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset(
              '${Constants.svgPath}/bottomRight_splash.svg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
