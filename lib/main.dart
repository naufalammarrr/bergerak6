import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: TextTheme(
          bodyLarge: const TextStyle(fontFamily: 'LocalFont'),
          bodyMedium: const TextStyle(fontFamily: 'AlternateFont'),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.indigo.shade700,
          centerTitle: true,
        ),
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.lobster(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            // Profile Picture
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/default_img.jpeg'),
            ),
            const SizedBox(height: 20),
            // Name
            Text(
              'Naufal Ammar Raihan',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.indigo.shade800,
              ),
            ),
            const SizedBox(height: 10),
            // Bio
            Text(
              'Ini adalah profile saya, yang dibuat menggunakan Flutter di Android Studio',
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 20),
            // Info Card
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.cake, color: Colors.indigo.shade400),
                    title: const Text('Tanggal Lahir'),
                    subtitle: const Text('15 September 2002'),
                  ),
                  ListTile(
                    leading: Icon(Icons.web, color: Colors.indigo.shade400),
                    title: const Text('Instagram'),
                    subtitle: const Text('@naufalammarr_'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.email, color: Colors.indigo.shade400),
                    title: const Text('Email'),
                    subtitle: const Text('naufalammar0909@gmail.com'),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_on, color: Colors.indigo.shade400),
                    title: const Text('Alamat'),
                    subtitle: const Text('Kenteng, Kejiwan, Wonosobo'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Social Icons
            Wrap(
              spacing: 15,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.facebook),
                  onPressed: () {},
                  color: Colors.blue.shade800,
                  tooltip: 'Facebook',
                ),
                IconButton(
                  icon: const Icon(Icons.link),
                  onPressed: () {},
                  color: Colors.blue.shade600,
                  tooltip: 'LinkedIn',
                ),
                IconButton(
                  icon: const Icon(Icons.code),
                  onPressed: () {},
                  color: Colors.black,
                  tooltip: 'GitHub',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
