import 'package:column/page/favourites_page.dart';
import 'package:column/page/people_page.dart';
import 'package:column/pdf_pages/pdf_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:column/widget/button_widget.dart';
import 'package:column/widget/navigation_drawer_widget.dart';
import 'package:column/pdf_pages/pdf_pages.dart';
import 'package:column/pdf_pages/shijrapdf.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Home';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        // endDrawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(MyApp.title),
          centerTitle: true,
          backgroundColor: Colors.grey[700],
        ),
        backgroundColor: Colors.grey[200],

        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 400.0,
                width: double.infinity,
                child: Carousel(
                  radius: Radius.circular(5.0),
                  boxFit: BoxFit.cover,
                  dotSize: 4.0,
                  
                  indicatorBgPadding: 6.0,
                  dotBgColor: Colors.transparent,
                  images: [
                    Image.asset(
                      'assets/images/one.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/three.jpg',
                      fit: BoxFit.contain,
                    ),
                    Image.asset(
                      'assets/images/four.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/five.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/two.jpg',
                      fit: BoxFit.contain,
                    ),
                    Image.asset('assets/images/seven.jpg'),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
                child: Text(
                  'Shijra Urdu',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Container(
                child: Center(
                    child: TextButton(
                  child: Text('Shijra E Taiyyaba'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    textStyle: TextStyle(
                        color: Colors.white30,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PdfView()));
                  },
                )),
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/images/one.jpg'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 40,
                child: Text(
                  'Shijra Hindi',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Container(
                child: Center(
                    child: TextButton(
                  child: Text('Shijra E Hashmi'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    textStyle: TextStyle(
                        color: Colors.white30,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ShijraView()));
                  },
                )),
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/images/two.jpg'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      );
}
