import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Widget/hoverWidget.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  Future<void> _launchURL(String url) async{
    final Uri uri = Uri.parse(url);
    if(!await launchUrl(uri,mode: LaunchMode.externalApplication)){
      throw "Can not launch url";
    }

  }

    final Uri _launchMail = Uri(scheme: 'mailto',
        path: 'shreyaswaghchaure@gmail.com',
    );

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFF223D51),
      child: Column(
        children: [
          Text(
            'Get in Touch.',
            style: GoogleFonts.exo2(fontSize: 45, color: const Color(0xFFFF4C29), decoration: TextDecoration.none, fontWeight: FontWeight.w200),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Want to talk about project or any questions',
            style: GoogleFonts.exo2(fontSize: 20, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w200),
          ),
          const SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: (){
              launchUrl(_launchMail);
            },
            child: OnHover(
              builder: (isHovered){
                return Container(
                  height: 50,
                  width: 130,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: isHovered? Color(0xFFFF4C29):Color(0xFF0A2940)),
                  child: Center(
                    child: Text(
                      'Say Hello',
                      style: GoogleFonts.exo2(fontSize: 15, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w200),
                    ),
                  ),
                );
              }
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'Socials',
              style: GoogleFonts.exo2(fontSize: 20, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w200),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
               onTap:  (){
                 _launchURL('https://www.instagram.com/_shreyas_waghchaure_');
               },
                child: OnHover(
                  builder: (isHovered){
                      return  Text(
                        'Instagram',
                        style: GoogleFonts.exo2(fontSize: 15, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w200),
                      );
                  },
                )
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: (){
                      _launchURL('https://twitter.com/ShreyWaghchaure?t=7Fn5BWNfQ29UtIL6Vc-rfQ&s=09');
                },
                child: OnHover(
                  builder: (isHovered){
                    return  Text(
                      'Twitter',
                      style: GoogleFonts.exo2(fontSize: 15, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w200),
                    );
                  },
                )
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: (){
                  _launchURL('https://www.linkedin.com/in/shreyas-waghchaure-22b1061b6/');
                },
                child:OnHover(
                  builder: (isHovered){
                    return  Text(
                      'LinkedIn',
                      style: GoogleFonts.exo2(fontSize: 15, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w200),
                    );
                  },
                )
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap:(){
                  _launchURL('https://github.com/Shreyas-Waghchaure');
                },
                child: OnHover(
                  builder: (isHovered){
                    return  Text(
                      'GitHub',
                      style: GoogleFonts.exo2(fontSize: 15, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w200),
                    );
                  },
                )
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
