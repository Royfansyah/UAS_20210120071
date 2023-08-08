import 'package:flutter/material.dart';
import 'package:uas_roy/component/navbar.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: NavBar(),
          appBar: AppBar(
              title: Text(
                'Welcome! 20210120071',
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              backgroundColor: Color.fromARGB(255, 44, 43, 43)),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/bg.jpg'), // Ganti dengan path gambar Anda
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                'Main Page',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          )),
    );
  }
}































// import 'package:flutter/material.dart';

//class DashboardScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Dashboard'),
//      ),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: [
//            Text(
//              'Welcome to the Dashboard!',
//              style: TextStyle(fontSize: 24),
//            ),
//            SizedBox(height: 20),
//            ElevatedButton(
//             onPressed: () {
//                Navigator.pushReplacementNamed(context,
//                    'login'); // Tambahkan logika yang diinginkan saat tombol ditekan
//              },
//              child: Text('Logout'),
//           ),
//         ],
//       ),
//      ),
//    );
//  }
//}
