import 'package:flutter/material.dart';
import 'package:logi/constants/custom_colors.dart';
import 'package:logi/screens/Onboarding/screen_four.dart';
import 'package:logi/screens/Onboarding/screen_two.dart';
import 'package:logi/widgets/onboard_button.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/screen_three.png"),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 16,
                    top: 16,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (builder) => ScreenFour()),
                        );
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: myBlue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(24),
                child: Column(
                  children: [
                    Text(
                      "Escrow Payments for Peace of Mind.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: lightBlack,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Your money stays safe until the delivery is confirmed. No scams, just secure transactions.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: lightBlack,
                      ),
                    ),
                    SizedBox(height: 60),
                    CustomButton(
                      title: "Login with Email",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (builder) => ScreenThree()),
                        );
                      },
                    ),
                     CustomButton(
                      title: "Connect Wallet",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (builder) => ScreenThree()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
 
  }
}