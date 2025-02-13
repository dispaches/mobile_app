import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color titleColour;
  final Color BgColor;
  final VoidCallback  onPressed;
  const CustomButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.BgColor = const Color(0xFF0074D9),
      this.titleColour = const Color(0xFFF2F2F2)});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: BgColor,
          padding: EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
         onPressed: onPressed, 
        child: Text(
          title,
          style: TextStyle(color: titleColour, fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
