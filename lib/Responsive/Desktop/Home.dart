import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.only(left: 35, top: 45),
                    child: Text(
                      "Hello, I'm ",
                      style: GoogleFonts.exo2(fontSize: 25, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w100),
                    )),
                Container(
                    padding: EdgeInsets.only(left: 35, top: 5),
                    child: Text(
                      "Shreyas Waghchaure",
                      style: GoogleFonts.exo2(fontSize: 60, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w100),
                    )),
                Container(
                    padding: EdgeInsets.only(left: 35, top: 5),
                    child: Text(
                      "Flutter Developer",
                      style: GoogleFonts.exo2(fontSize: 35, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w100),
                    )),
                GestureDetector(
                  onTap: (){
                    downloadFile('/lib/ShreyasCV.pdf');
                  },
                  child: Container(
                    height: 64,
                    width: 181,
                    margin: EdgeInsets.only(left: 35,top:35),
                    color: Color(0xFFFF4C29),
                    child: Center(
                        child: Text(
                      'Download CV',
                      style: GoogleFonts.exo2(fontSize: 25, color: Colors.white, decoration: TextDecoration.none ,fontWeight: FontWeight.w300),
                    )),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.only(top: 39, left: 25,bottom: 15),
                height: MediaQuery.of(context).size.height * 0.55,
                width: MediaQuery.of(context).size.width * 0.55,
                child: Image.asset('picture.png')
            ),
          ),
        ],
      ),
    );
  }
}

downloadFile(path){
  AnchorElement anchorElement =  AnchorElement(href: path);
  anchorElement.download = "Shreyas Resume";
  anchorElement.click();
}
