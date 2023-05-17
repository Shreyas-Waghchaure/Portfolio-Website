import 'package:flutter/material.dart';
import 'package:protfolio_website/Responsive/Mobile/mobAboutMe.dart';
import 'package:protfolio_website/Responsive/Mobile/mobContact.dart';
import 'package:protfolio_website/Responsive/Mobile/mobCustomTabBar.dart';
import 'package:protfolio_website/Responsive/Mobile/mobFooter.dart';
import 'package:protfolio_website/Responsive/Mobile/mobHome.dart';
import 'package:protfolio_website/Responsive/Mobile/mobProjects.dart';
import 'package:protfolio_website/Responsive/Mobile/mobSkills.dart';

class mobileView extends StatefulWidget {
  const mobileView({Key? key}) : super(key: key);

  @override
  State<mobileView> createState() => _mobileViewState();
}

class _mobileViewState extends State<mobileView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0xFF223D51),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            mobCustomTabBar(),
            Container(
              child: Column(
                children: const [
                  mobHome(),
                  Divider(color: Color(0xFFFF4C29),indent: 25,endIndent: 25,),
                  mobAboutMe(),
                  Divider(color: Color(0xFFFF4C29),indent: 25,endIndent: 25,),
                  mobProjects(),
                  Divider(color: Color(0xFFFF4C29),indent: 25,endIndent: 25,),
                  mobSkills(),
                  Divider(color: Color(0xFFFF4C29),indent: 25,endIndent: 25,),
                  mobContact(),
                  SizedBox(height: 25,),
                  mobFooter(),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
