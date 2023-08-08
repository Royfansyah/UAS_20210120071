import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key})
      : super(key: key); // Perbaiki deklarasi konstruktor

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.only(top: 10.0, left: 90, right: 90),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 216, 216, 216),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context,
              'dashboard'); // Tindakan yang akan dilakukan saat tombol ditekan
        },
        style: ElevatedButton.styleFrom(
          // Ganti ini dengan styling tombol yang Anda inginkan
          primary: Color.fromARGB(255, 216, 216, 216),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          "Login!",
          style: TextStyle(
            color: Color.fromARGB(255, 41, 41, 41),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
