import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mobAboutMe extends StatelessWidget {
  const mobAboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'About Me.',
          style: GoogleFonts.exo2(fontSize: 45, color: Color(0xFFFF4C29), decoration: TextDecoration.none, fontWeight: FontWeight.w100),
        ),
        Container(
          height: 251,
          width: 476,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Image.asset('about.png'),
        ),
        SizedBox(height: 5,),
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(horizontal: 25),
          width: 550 ,
          height: 300,
          child: Text(
            "Hello there, I am Shreyas, a passionate Flutter Developer, i am 21 year old and currently pursuing my Engineering Degree in Information Technology, I am Self tough flutter Developer and learning it more everyday",
            style: GoogleFonts.exo2(fontSize: 25,color: Colors.white,decoration: TextDecoration.none,fontWeight: FontWeight.w100),
          ),
        ),
      ],
    );
  }
}
