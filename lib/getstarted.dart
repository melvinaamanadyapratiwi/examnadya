import 'package:flutter/material.dart';
import 'sigin.dart'; // import file sign in

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 80.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/Shopping bag-rafiki 1.png', // Ubah path gambar sesuai dengan lokasi gambar Anda
                      width: 300, // Ubah lebar gambar
                      height: 300, // Ubah tinggi gambar
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      'Get Your Order',
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignInScreen())); // Navigasi ke halaman sign in
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 255, 17, 0), 
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: GetStartedScreen(),
  ));
}