import 'package:flutter/material.dart';
import 'second_page.dart';
import 'splash_screen.dart'; // Import the splash screen
import 'login_page.dart'; // Import the login page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(), // Set SplashScreen as the home screen
      debugShowCheckedModeBanner: false, // Remove the debug banner
      routes: {
        '/home': (context) => MyHomePage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('FIT PULSE'),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: height * 0.05), // Adjust this value as needed

            // Main Image
            Container(
              width: 280,
              height: 280,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/main_image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Main Text
            Text(
              'FIT PULSE',
              style: TextStyle(
                fontSize: 45,
                color: Colors.white,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.bold, // Apply bold font weight
              ),
            ),

            Column(
              children: [
                // First Paragraph
                Text(
                  "Embark on your journey to a",
                  style: TextStyle(fontSize: 16, color: Colors.white, fontFamily: 'DM Sans'),
                  textAlign: TextAlign.center,
                ),
                // Second Paragraph
                Text(
                  "healthier you. Let's lace up",
                  style: TextStyle(fontSize: 16, color: Colors.white, fontFamily: 'DM Sans'),
                  textAlign: TextAlign.center,
                ),
                // Third Paragraph
                Text(
                  "and run!",
                  style: TextStyle(fontSize: 16, color: Colors.white, fontFamily: 'DM Sans'),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            // Image Button
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              child: Image.asset('assets/button_image.png', height: 150, width: 150),
            ),
            SizedBox(height: height * 0.05), // Adjust this value as needed
          ],
        ),
      ),
    );
  }
}
