import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JoinBtn extends StatelessWidget {
  const JoinBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      height: 70,
      margin: EdgeInsets.only(top: 70, bottom: 35),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF0b2239)),
          child: Text(
            '!انضم إلى قلم',
            style: GoogleFonts.cairo(
              fontSize: 25,
              color: Colors.white,
            ),
          )),
    );
  }
}
