import 'package:flutter/material.dart';
import 'package:protfolio_website/Responsive/Desktop/desktopView.dart';
import 'package:protfolio_website/Responsive/Mobile/mobileView.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
          return desktopView();
      } else {
          return mobileView();
      }
    });
  }
}
