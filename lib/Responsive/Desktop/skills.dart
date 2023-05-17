import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Skills extends StatefulWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {

  final skills = const [
    Image(image:  AssetImage('Flutter.png'),),
    Image(image:  AssetImage('Dart.png'),),
    Image(image:  AssetImage('firebase.png'),),
    Image(image:  AssetImage('Github.png'),),
    Image(image:  AssetImage('java.png'),),
    Image(image:  AssetImage('figma.png'),),

  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
          horizontal: 80  ,vertical: 50 ),
      child: Column(
        children: [
          Text(
            'Skills.',
            style: GoogleFonts.exo2(fontSize: 45, color: Color(0xFFFF4C29), decoration: TextDecoration.none, fontWeight: FontWeight.w100),
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            width: 500,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                childAspectRatio: 1 / 1.1,
                mainAxisSpacing: 40,
                crossAxisSpacing: 40,
              ),
              itemCount: skills.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int i) {
                return SkillsCard(
                      skills[i]
                );
              },
            ),
          ),
        ],
      ),
    );
  }
  Widget SkillsCard(skills){
    return Container(
      height: 150,
      width: 250,
      child: skills,
    );
  }
}
