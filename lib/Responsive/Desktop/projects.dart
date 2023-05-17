import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(
          'Projects.',
          style: GoogleFonts.exo2(fontSize: 45, color: Color(0xFFFF4C29), decoration: TextDecoration.none, fontWeight: FontWeight.w100),
        )),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            projectCard('True Sign-Indian Sign Language Detection App', 'A project on Indian Sign Language Detection using Machine Learning Approach','https://github.com/Shreyas-Waghchaure/ISL---Project-4th-year-SVIT'),
            projectCard('News App','A Tech News app which shows technology related news using rest api','https://github.com/Shreyas-Waghchaure/News-App'),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            projectCard('Todo App','A Todo List application helps to manage daily work.','https://github.com/Shreyas-Waghchaure/TODOs-App'),
            projectCard('Clock App','Clock application which shows time according to different Cities in the world.','https://github.com/Shreyas-Waghchaure/Clock-App'),
          ],
        ),
      ],
    );
  }

  Widget projectCard(String title, String desc,String Url) {

    Future<void> _launchURL(String url) async{
      final Uri uri = Uri.parse(url);
      if(!await launchUrl(uri,mode: LaunchMode.externalApplication)){
        throw "Can not launch url";
      }

    }
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(35),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color(0xFF0A2940),
        ),
        child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                width: 555,
                child: Text(
                  title,
                  style: GoogleFonts.exo2(fontSize: 25, color: Color(0xFFFF4C29), decoration: TextDecoration.none, fontWeight: FontWeight.w100),
                ),
              ),
              Container(
                width: 465,
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  desc,
                  style: GoogleFonts.exo2(fontSize: 22, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w100),
                ),
              ),
              SizedBox(height: 70,),
              Center(
                child: GestureDetector(
                  onTap: (){
                    _launchURL(Url);
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(color: Color(0xFFFF4C29), borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Text(
                      'View More',
                      style: GoogleFonts.exo2(fontSize: 22, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w100),
                    )),
                  ),
                ),
              ),

        ]
        ),
      ),
    );
  }
}
