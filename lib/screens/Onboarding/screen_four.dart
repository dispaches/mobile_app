import 'package:flutter/material.dart';
import 'package:logi/constants/custom_colors.dart';
import 'package:logi/screens/Onboarding/screen_two.dart';
import 'package:logi/widgets/onboard_button.dart';

class ScreenFour extends StatelessWidget {
  const ScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/Background.png"),
                      ),
                    ),
                  ),
                
              Container(
                padding: EdgeInsets.all(24),
                child: Column(
                  children: [
                    Text(
                      "Choose your login method",
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
                      "By connecting your wallet you agree to our Terms of Service and Privacy Policy",
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
                          MaterialPageRoute(builder: (builder) => null),
                        );
                      },
                    ),
                    SizedBox(height: 20,),
                     CustomButton(
                      BgColor: Color(0XFFFF851B),
                      title: "Connect Wallet",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (builder) => null),
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