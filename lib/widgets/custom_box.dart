import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final Color titleColor;
  final Color descriptionColor;

  const CustomBox({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    this.titleColor = const Color(0xFFFF851B), // Default color for title
    this.descriptionColor = const Color(0xFF666666), // Default color for description
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0X0FFCCCCCC), width: 2),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 50,
            height: 50,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: titleColor, // Use dynamic color
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 12,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    color: descriptionColor, // Use dynamic color
                  ),
                  softWrap: true,
                  overflow: TextOverflow.clip,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
