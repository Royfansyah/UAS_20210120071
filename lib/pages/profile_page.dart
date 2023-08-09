import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final double coverHeight = 230;
  final double profileHeight = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.grey[900],
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'), // Ganti dengan path gambar Anda
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            buildTop(),
            buildContent(),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 70.0), // Adjust horizontal padding
              title: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Warna garis
                    width: 1.5, // Lebar garis
                  ),
                  color: Colors.grey[850],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: EdgeInsets.all(10), // Set container padding
                child: Text(
                  'Change Password',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center, // Set text alignment to center
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 70.0), // Adjust horizontal padding
              title: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Warna garis
                    width: 1.5, // Lebar garis
                  ),
                  color: Colors.grey[850],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: EdgeInsets.all(10), // Set container padding
                child: Text(
                  'Change Email',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center, // Set text alignment to center
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 70.0), // Adjust horizontal padding
              title: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Warna garis
                    width: 1.5, // Lebar garis
                  ),
                  color: Colors.grey[850],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: EdgeInsets.all(10), // Set container padding
                child: Text(
                  'Delete Account',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center, // Set text alignment to center
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContent() => Column(
        children: [
          const SizedBox(height: 8),
          Text(
            'Royfansyah Muhammad Razavi',
            style: GoogleFonts.notoSans(
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey[200],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '20210120071',
            style: GoogleFonts.notoSans(
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey[200],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 3.0,
                    color: Color.fromARGB(255, 137, 137, 137),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.circle,
                        color: Colors.green,
                        size: 20.0, // Ukuran icon
                      ),
                      SizedBox(width: 5.0), // Jarak antara icon dan teks
                      Text(
                        'Online',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 3.0,
                    color: Color.fromARGB(255, 137, 137, 137),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      );

  Widget buildTop() {
    final bottom = profileHeight / 3;
    final top = coverHeight - profileHeight / 3;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),
      ],
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset(
          'assets/kimiko_bg.jpg',
          width: 500,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 3,
        backgroundColor: Colors.grey,
        backgroundImage: AssetImage('assets/kimiko.png'),
      );
}
