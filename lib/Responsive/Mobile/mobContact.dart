import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class mobContact extends StatefulWidget {
  const mobContact({Key? key}) : super(key: key);

  @override
  State<mobContact> createState() => _mobContactState();
}

class _mobContactState extends State<mobContact> {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
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
          style: GoogleFonts.exo2(fontSize: 20, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w200,),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 25,
        ),
        GestureDetector(
          onTap: (){
            launchUrl(_launchMail);
          },
          child: Container(
            height: 50,
            width: 130,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: const Color(0xFF0A2940)),
            child: Center(
              child: Text(
                'Say Hello',
                style: GoogleFonts.exo2(fontSize: 15, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w200),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Center(
          child: Text(
            'Socials',
            style: GoogleFonts.exo2(fontSize: 20, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w200),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap:  (){
                  _launchURL('https://www.instagram.com/_shreyas_waghchaure_');
                },
                child: Text(
                  'Instagram',
                  style: GoogleFonts.exo2(fontSize: 15, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w200),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: (){
                  _launchURL('https://twitter.com/ShreyWaghchaure?t=7Fn5BWNfQ29UtIL6Vc-rfQ&s=09');
                },
                child: Text(
                  'Twitter',
                  style: GoogleFonts.exo2(fontSize: 15, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w200),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: (){
                  _launchURL('https://www.linkedin.com/in/shreyas-waghchaure-22b1061b6/');
                },
                child: Text(
                  'LinkedIn',
                  style: GoogleFonts.exo2(fontSize: 15, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w200),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap:(){
                  _launchURL('https://github.com/Shreyas-Waghchaure');
                },
                child: Text(
                  'Github',
                  style: GoogleFonts.exo2(fontSize: 15, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w200),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
