import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApplication());

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          bottomNavigationBar: ContactUsBottomAppBar(
            companyName: 'Mohammad Aafeen',
            textColor: Colors.white,
            backgroundColor: Colors.teal.shade300,
            email: 'aafeen99shaikh@gmail.com',
            // textFont: 'Sail',
          ),
          backgroundColor: Colors.grey[800],
          body: ContactUs(
            cardColor: Colors.white,
            textColor: Colors.teal.shade900,
            logo: AssetImage('images/logo.jpg'),
            email: 'aafeen99shaikh@gmail.com',
            companyName: 'Mohammad Aafeen',
            companyColor: Colors.teal.shade100,
            phoneNumber: '+918668432775',
            //website: 'https://abhishekdoshi.godaddysites.com',
            //githubUserName: 'AbhishekDoshi26',
            linkedinURL: 'https://www.linkedin.com/in/mohammad-aafeen/',
            tagLine: 'Developer',
            taglineColor: Colors.teal.shade100,
            //twitterHandle: 'AbhishekDoshi26',
            //instagram: '_abhishek_doshi',
            //facebookHandle: '_abhishek_doshi'),
          ),
        ));
  }
}
