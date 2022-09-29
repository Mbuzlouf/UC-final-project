import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qalam/screens/apps.dart';
import 'package:qalam/screens/classes.dart';

class Squares2 extends StatelessWidget {
  const Squares2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: Container(
                width: 190,
                height: 150,
                decoration: BoxDecoration(
                    color: Color.fromARGB(17, 11, 34, 57),
                    borderRadius: BorderRadius.circular(7)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone_iphone,
                      size: 45,
                      color: Color(0xFF0b2239),
                    ),
                    Text(
                      "تطبيقات مفيدة",
                      style: GoogleFonts.cairo(
                        fontSize: 25,
                        color: Color(0xFF0b2239),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Apps()));
              },
            ),
            InkWell(
              child: Container(
                width: 190,
                height: 150,
                decoration: BoxDecoration(
                    color: Color.fromARGB(17, 11, 34, 57),
                    borderRadius: BorderRadius.circular(7)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.school,
                      size: 45,
                      color: Color(0xFF0b2239),
                    ),
                    Text(
                      "صفوفي",
                      style: GoogleFonts.cairo(
                        fontSize: 25,
                        color: Color(0xFF0b2239),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Classes()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
