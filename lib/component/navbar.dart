import 'package:flutter/material.dart';
import 'package:uas_roy/pages/login_page.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Royfansyah Muhammad Razavi'),
            accountEmail: const Text('royfansyahae@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('assets/kimiko.png')),
            ),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 31, 31, 31),
                image: DecorationImage(
                    image: AssetImage('assets/kimiko_bg.jpg'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.browse_gallery),
            title: Text(
              'Gallery',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info_outline_rounded),
            title: Text(
              'About Us!',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
