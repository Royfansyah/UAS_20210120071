import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key})
      : super(key: key); // Perbaiki deklarasi konstruktor

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, left: 90, right: 90),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, 'dashboard');
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          primary: Color.fromARGB(255, 216, 216, 216),
          onPrimary: Color.fromARGB(255, 41, 41, 41),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          "Login!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
