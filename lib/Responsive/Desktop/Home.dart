import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Widget/hoverWidget.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future<void> _launchURL(String url) async{
      final Uri uri = Uri.parse(url);
      if(!await launchUrl(uri,mode: LaunchMode.externalApplication)){
        throw "Can not launch url";
      }
    }
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.only(left: 35, top: 45),
                    child: Text(
                      "Hello, I'm ",
                      style: GoogleFonts.exo2(fontSize: 25, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w200),
                    )),
                Container(
                    padding: const EdgeInsets.only(left: 35, top: 5),
                    child: Text(
                      "Shreyas Waghchaure",
                      style: GoogleFonts.exo2(fontSize: 60, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w200),
                    )),
                Container(
                    padding: const EdgeInsets.only(left: 35, top: 5),
                    child: Text(
                      "Flutter Developer",
                      style: GoogleFonts.exo2(fontSize: 35, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w200),
                    )),
                GestureDetector(
                  onTap: (){
                   _launchURL('https://drive.google.com/file/d/1wU6MS5jJBA7VHBLrO5UMzg7xMrev4K4D/view?usp=sharing');
                  },
                  child: OnHover(
                    builder: (isHovered){
                      return Container(
                        height: 64,
                        width: 181,
                        margin: const EdgeInsets.only(left: 35,top:35),
                        color: const Color(0xFFFF4C29),
                        child: Center(
                            child: Text(
                              'View CV',
                              style: GoogleFonts.exo2(fontSize: 25, color: Colors.white, decoration: TextDecoration.none ,fontWeight: FontWeight.w300),
                            )),
                      );
                    },

                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
                padding: const EdgeInsets.only(top: 39, left: 25,bottom: 15),
                height: MediaQuery.of(context).size.height * 0.55,
                width: MediaQuery.of(context).size.width * 0.55,
                child: Image.asset('assets/picture.png')
            ),
          ),
        ],
      ),
    );
  }
}
