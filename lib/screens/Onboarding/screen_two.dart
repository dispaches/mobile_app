import 'package:flutter/material.dart';
import 'package:logi/constants/custom_colors.dart';
import 'package:logi/screens/Onboarding/screen_three.dart';
import 'package:logi/widgets/onboard_button.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                        image: AssetImage("assets/images/screen_two.png"),
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
                          MaterialPageRoute(builder: (builder) => ScreenThree()),
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
                      "Track Your Orders in Real-Time.",
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
                      "Watch your deliveries live, confirm arrival, and release payments only when satisfied.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: lightBlack,
                      ),
                    ),
                    SizedBox(height: 60),
                    CustomButton(
                      title: "Next",
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