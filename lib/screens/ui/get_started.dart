import 'package:flutter/material.dart';
import 'package:logi/screens/Onboarding/screen_one.dart';
import 'package:logi/widgets/custom_box.dart';
import 'package:logi/widgets/onboard_button.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 80),
                  Text(
                    "Get Started with Logi",
                    style: TextStyle(
                      color: Color(0XFF333333),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Choose your role to continue. Are you signing up as a Rider or a User?",
                    style: TextStyle(
                      color: Color(0XFF848791),
                      fontSize: 14,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 40), 
              CustomBox(image: "assets/images/bike.png", title: "Sign up as a Rider",  description: "Earn money by delivering packages while enjoying the flexibility to work at your convenience. Stay updated with real-time job notifications and take control of your schedule effortlessly."),
                  SizedBox(height: 30), 
              CustomBox(image: "assets/images/user.png", title: "Sign up as a User", titleColor: Color(0X0FF0074D9), description: "Send and track your deliveries effortlessly with a fast and reliable network of riders. Enjoy a secure payment and tracking system that ensures your packages reach their destination safely and on time.."),
              SizedBox(height: 80,),
                CustomButton( title: "Get Started",  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) => ScreenOne()));
                },),
              SizedBox(height: 30,),

                TextButton( onPressed: () {     }, child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?", style: TextStyle(color: Color(0XFF666666), fontSize: 14, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),
                    Text("Log in", style: TextStyle(color: Color(0XFF0074D9), fontSize: 14, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),),
                  ],
                ),),
              
                ],
              
            ),
          ),
        ),
      ),
    );
  }
}
