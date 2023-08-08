import 'package:flutter/material.dart';
import 'package:uas_roy/component/Google.dart';
import 'package:uas_roy/component/TextField.dart';
import 'package:uas_roy/component/Button.dart';
import 'package:uas_roy/component/navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_roy/pages/dashboard.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // Text Edit Controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'), // Path Gambar Background
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: ListView(
              children: [
                const SizedBox(height: 35),

                Image.asset(
                  'assets/icon.png', // Ganti dengan path gambar yang diinginkan
                  height: 100,
                  width: 340,
                ),

                const SizedBox(height: 5),

                Text(
                  'LOGIN!',
                  style: GoogleFonts.permanentMarker(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 226, 226, 226),
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 20),

                // Username
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                  prefixIcon: Icons.person,
                ),

                const SizedBox(height: 15),

                // Password
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                  prefixIcon: Icons.lock,
                ),

                const SizedBox(height: 15),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Change Password!',
                        style: TextStyle(color: Colors.white),
                      ),

                      Spacer(), // Mengisi ruang di antara teks pada row

                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                // Button
                MyButton(),

                const SizedBox(height: 30),

                // Divider
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1.0,
                          color: Color.fromARGB(255, 71, 71, 71),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child:
                            Text('Or', style: TextStyle(color: Colors.white)),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1.0,
                          color: Color.fromARGB(255, 71, 71, 71),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // Google sign In
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    GoogleLogo(imagePath: 'assets/google.png'),
                  ],
                ),

                const SizedBox(height: 20),

                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Register Here!',
                    style: TextStyle(color: Colors.white),
                  ),
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
