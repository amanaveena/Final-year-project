import 'package:flutter/material.dart';
import 'third_page.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
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
                  image: AssetImage('assets/middle_image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Large Text
            Column(
              children: [
                Text(
                  "RAIN OR SHINE,WE'LL",
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
                    text: "FIND YOUR ",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: 'BebasNeue',
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "PERFECT",
                        style: TextStyle(
                          color: Color(0xFFB0C929),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4), // Adjust this value as needed
                Text(
                  'RUN TIME.',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'BebasNeue',
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
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
                  Image.asset('assets/dots_image.png', height: 30, width: 30),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdPage()), // Navigate to third page
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
