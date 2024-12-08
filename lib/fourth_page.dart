import 'package:flutter/material.dart';
import 'login_page.dart'; // Import the login page

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fourth Page'),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // Middle Image
            Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/fourth_middle_image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Large Text
            Column(
              children: [
                Text(
                  "UNLEASH YOUR INNER",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'BebasNeue',
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 4), // Adjust this value as needed
                Text(
                  "EXPLORER. LET'S MAP",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'BebasNeue',
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 4), // Adjust this value as needed
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'BebasNeue',
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'YOUR ', style: TextStyle(color: Colors.white)),
                      TextSpan(text: 'ADVENTURE', style: TextStyle(color: Color(0xFFB0C929))),
                      TextSpan(text: '!', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),

            // Buttons and Dots at the bottom
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context); // Handle skip action
                    },
                    child: Text(
                      'SKIP'.toUpperCase(), // Capitalize text
                      style: TextStyle(fontSize: 17, color: Colors.white, fontFamily: 'Montserrat'),
                    ),
                  ),
                  Image.asset('assets/dots3_image.png', height: 30, width: 30),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      'NEXT'.toUpperCase(), // Capitalize text
                      style: TextStyle(fontSize: 17, color: Colors.white, fontFamily: 'Montserrat'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
