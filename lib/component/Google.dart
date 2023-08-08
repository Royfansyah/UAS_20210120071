import 'package:flutter/material.dart';

class GoogleLogo extends StatelessWidget {
  final String imagePath;
  const GoogleLogo({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 216, 216, 216),
        ),
        child: Image.asset(
          imagePath,
          height: 20,
        ));
  }
}
