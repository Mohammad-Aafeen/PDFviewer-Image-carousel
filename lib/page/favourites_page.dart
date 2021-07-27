import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

void main() => runApp(FavouritesPage());

class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('About Us'),
          centerTitle: true,
          backgroundColor: Colors.grey[700],
        ),
        backgroundColor: Colors.grey[800],
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
            ),
            ContactUs(
                cardColor: Colors.white,
                textColor: Colors.teal.shade900,
                logo: AssetImage('assets/images/seven.jpg'),
                email: 'yourmail@mail.com',
                companyName: 'Your Name',
                companyColor: Colors.teal.shade100,
                //phoneNumber: '67488599765',
                website: 'https://qadrialhashmihealing.wordpress.com',
                //githubUserName: 'AbhishekDoshi26',
                //linkedinURL: 'https://www.linkedin.com/in/mohammad-aafeen/',
                tagLine: 'Karnataka',
                taglineColor: Colors.teal.shade100,
                //twitterHandle: '0000',
                //instagram: 'name',
                facebookHandle: 'name'),
            Text(
              'About Us',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white38),
              textAlign: TextAlign.center,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'enter your text here',
                style: TextStyle(color: Colors.white54),
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
    );
  }
}
