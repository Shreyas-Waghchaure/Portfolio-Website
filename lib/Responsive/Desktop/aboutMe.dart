import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 351,
                  width: 576,
                  child: Image.asset('assets/about.png'),
                ),
              ),
              SizedBox(width: 25,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'About Me.',
                      style: GoogleFonts.exo2(fontSize: 40, color: Color(0xFFFF4C29), decoration: TextDecoration.none, fontWeight: FontWeight.w200),
                    ),
                    SizedBox(height: 25,),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 596 ,
                      height: 423,
                      child: Text(
                          "Hello there, I am Shreyas, a passionate Flutter Developer, i am 21 year old and currently pursuing my Engineering Degree in Information Technology, I am a Self taught flutter Developer and learning it more everyday",
                        style: GoogleFonts.exo2(fontSize: 25,color: Colors.white,decoration: TextDecoration.none,fontWeight: FontWeight.w200),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
