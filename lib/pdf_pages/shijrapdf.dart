import 'package:flutter/material.dart';
import 'package:column/widget/navigation_drawer_widget.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

void main() => runApp(ShijraView());

class ShijraView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: Scaffold(
        appBar: AppBar(title: Text("AL HASHMI"), backgroundColor: Colors.grey),
        drawer: NavigationDrawerWidget(),
        body: PDF(
          enableSwipe: true,
          swipeHorizontal: true,
          autoSpacing: false,
          pageFling: false,
          onError: (error) {
            print(error.toString());
          },
          onPageError: (page, error) {
            print('$page: ${error.toString()}');
          },
          onPageChanged: (int page, int total) {
            print('page change: $page/$total');
          },
        ).fromAsset('assets/pdf/shijra.pdf'),
      ),
    );
  }
}
