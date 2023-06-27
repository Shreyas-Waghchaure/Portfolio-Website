import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protfolio_website/Widget/hoverWidget.dart';
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
          style: GoogleFonts.exo2(fontSize: 45, color: const Color(0xFFFF4C29), decoration: TextDecoration.none, fontWeight: FontWeight.w200),
        )),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            projectCard('True Sign-Indian Sign Language Detection App', 'A project on Indian Sign Language Detection using Machine Learning Approach','https://github.com/Shreyas-Waghchaure/ISL---Project-4th-year-SVIT'),
            projectCard('News App','A Tech News app which shows technology related news using rest api','https://github.com/Shreyas-Waghchaure/News-App'),
          ],
        ),
        const SizedBox(
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
        margin: const EdgeInsets.all(45),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color(0xFF0A2940),
        ),
        child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                width: 555,
                child: Text(
                  title,
                  style: GoogleFonts.exo2(fontSize: 25, color: const Color(0xFFFF4C29), decoration: TextDecoration.none, fontWeight: FontWeight.w200),
                ),
              ),
              Container(
                width: 465,
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  desc,
                  style: GoogleFonts.exo2(fontSize: 22, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w200),
                ),
              ),
              const SizedBox(height: 70,),
              Center(
                child: GestureDetector(
                  onTap: (){
                    _launchURL(Url);
                  },
                  child: OnHover(
                    builder: (isHovered) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(color: const Color(0xFFFF4C29), borderRadius: BorderRadius.circular(15)),
                        child: Center(
                            child: Text(
                              'View More',
                              style: GoogleFonts.exo2(fontSize: 22, color: Colors.white, decoration: TextDecoration.none, fontWeight: FontWeight.w200),
                            )),
                      );
                    },
                  ),
                ),
              ),

        ]
        ),
      ),
    );
  }
}
