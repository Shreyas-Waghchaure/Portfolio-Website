import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mobFooter extends StatelessWidget {
  const mobFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      color: const Color(0xFF0A2940),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Design and build by Shreyas Waghchaure', style: GoogleFonts.exo2(fontSize: 13, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w100),),
          Text('Made with Flutter 💙', style: GoogleFonts.exo2(fontSize: 13, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w100),)
        ],
      ),
    );
  }
}
