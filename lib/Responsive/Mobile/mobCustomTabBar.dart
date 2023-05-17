import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mobCustomTabBar extends StatelessWidget {
  const mobCustomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 75,
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'SHREY.',
            style: GoogleFonts.aldrich(
              fontSize: 30,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          )
        ],
      ),
    );
  }
}
