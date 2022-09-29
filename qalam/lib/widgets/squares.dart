import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qalam/screens/calc.dart';
import 'package:qalam/screens/calendar.dart';

class Squares1 extends StatelessWidget {
  const Squares1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        margin: EdgeInsets.only(
          top: 35,
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
                      Icons.calculate,
                      size: 45,
                      color: Color(0xFF0b2239),
                    ),
                    Text(
                      "حاسبة الدرجات",
                      style: GoogleFonts.cairo(
                          fontSize: 25, color: Color(0xFF0b2239)),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Calc()));
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
                      Icons.calendar_month,
                      size: 45,
                      color: Color(0xFF0b2239),
                    ),
                    Text(
                      "التقويم",
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
                    .push(MaterialPageRoute(builder: (context) => Calendar()));
              },
            ),
          ],
        ));
  }
}
