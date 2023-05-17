import 'package:flutter/material.dart';
import 'package:protfolio_website/Responsive/Desktop/Footer.dart';
import 'package:protfolio_website/Responsive/Desktop/Home.dart';
import 'package:protfolio_website/Responsive/Desktop/aboutMe.dart';
import 'package:protfolio_website/Responsive/Desktop/contact.dart';
import 'package:protfolio_website/Responsive/Desktop/customTabBar.dart';
import 'package:protfolio_website/Responsive/Desktop/projects.dart';
import 'package:protfolio_website/Responsive/Desktop/skills.dart';

class desktopView extends StatefulWidget {
  const desktopView({Key? key}) : super(key: key);

  @override
  State<desktopView> createState() => _desktopViewState();
}

class _desktopViewState extends State<desktopView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0xFF223D51),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomTabBar(),
            Container(
              child: Column(
                children: const [
                  Home(),
                  Divider(color: Color(0xFFFF4C29),indent: 25,endIndent: 25,),
                  AboutMe(),
                  Divider(color: Color(0xFFFF4C29),indent: 25,endIndent: 25,),
                  Projects(),
                  Divider(color: Color(0xFFFF4C29),indent: 25,endIndent: 25,),
                  Skills(),
                  Divider(color: Color(0xFFFF4C29),indent: 25,endIndent: 25,),
                  Contact(),
                  SizedBox(height: 25,),
                  Footer(),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
