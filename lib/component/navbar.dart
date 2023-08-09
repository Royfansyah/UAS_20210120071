import 'package:flutter/material.dart';
import 'package:uas_roy/pages/gallery.dart';
import 'package:uas_roy/pages/login_page.dart';
import 'package:uas_roy/pages/profile_page.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(22, 22, 22, 0.694),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Royfansyah Muhammad Razavi'),
            accountEmail: const Text('20210120071'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('assets/kimiko.png')),
            ),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 31, 31, 31),
                image: DecorationImage(
                    image: AssetImage('assets/kimiko_bg.jpg'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1.5,
                    color: Color.fromARGB(255, 71, 71, 71),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('Menu',
                      style: TextStyle(color: Colors.white, fontSize: 13)),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1.5,
                    color: Color.fromARGB(255, 71, 71, 71),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.book_rounded,
              color: Colors.white,
            ),
            title: Text(
              'Gallery',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Gallery()));
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1.5,
                    color: Color.fromARGB(255, 71, 71, 71),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('More',
                      style: TextStyle(color: Colors.white, fontSize: 13)),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1.5,
                    color: Color.fromARGB(255, 71, 71, 71),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.info_outline_rounded,
              color: Colors.white,
            ),
            title: Text(
              'About Us!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          const SizedBox(
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1.5,
                    color: Color.fromARGB(255, 71, 71, 71),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1.5,
                    color: Color.fromARGB(255, 71, 71, 71),
                  ),
                ),
              ],
            ),
          ),
          // Close Drawer Button
          ListTile(
            leading: Icon(
              Icons.close,
              color: Colors.white,
            ),
            title: Text(
              'Close',
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
        ],
      ),
    );
  }
}
