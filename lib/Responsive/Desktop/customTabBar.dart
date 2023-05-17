import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protfolio_website/Responsive/Desktop/Home.dart';
import 'package:protfolio_website/Responsive/Desktop/aboutMe.dart';
import 'package:protfolio_website/Responsive/Desktop/projects.dart';

class CustomTabBar extends StatefulWidget {
  final Function()? Home;
  final Function()? AboutMe;
  final Function()? project;
  final Function()? skills;
  final Function()? contact;
  const CustomTabBar({
    Key? key,
    this.Home,
    this.AboutMe,
    this.project,
    this.skills,
    this.contact,
  }) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 65,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment:MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
            child: GestureDetector(
                onTap: () {
                  Home();
                },
                child: Text(
                  'SHREY.',
                  style: GoogleFonts.aldrich(
                    fontSize: 40,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                )),
          ),
          // SizedBox(
          //   width: MediaQuery.of(context).size.width * 0.4,
          // ),
          // Text(
          //   'Home.',
          //   style: GoogleFonts.exo2(
          //     fontSize: 20,
          //     color: Color(0xFFFF4C29),
          //     decoration: TextDecoration.none,
          //     fontWeight: FontWeight.w300
          //   ),
          // ),
          //
          // GestureDetector(
          //   onTap: (){
          //     AboutMe();
          //   },
          //   child: Text(
          //     'About me.',
          //     style: GoogleFonts.exo2(
          //       fontSize: 20,
          //       color: Color(0xFFFF4C29),
          //       decoration: TextDecoration.none,
          //       fontWeight: FontWeight.w300
          //     ),
          //   ),
          // ),
          //
          // GestureDetector(
          //   onTap: (){
          //     widget.project;
          //   },
          //   child: Text(
          //     'Projects.',
          //     style: GoogleFonts.exo2(
          //       fontSize: 20,
          //       color: Color(0xFFFF4C29),
          //       decoration: TextDecoration.none,
          //       fontWeight: FontWeight.w300
          //     ),
          //   ),
          // ),
          // GestureDetector(
          //   onTap: (){
          //     widget.project;
          //   },
          //   child: Text(
          //     'Skills.',
          //     style: GoogleFonts.exo2(
          //       fontSize: 20,
          //       color: Color(0xFFFF4C29),
          //       decoration: TextDecoration.none,
          //       fontWeight: FontWeight.w300
          //     ),
          //   ),
          // ),
          // GestureDetector(
          //   onTap: (){
          //     widget.project;
          //   },
          //   child: Text(
          //     'Contact.',
          //     style: GoogleFonts.exo2(
          //       fontSize: 20,
          //       color: Color(0xFFFF4C29),
          //       decoration: TextDecoration.none,
          //       fontWeight: FontWeight.w300
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
