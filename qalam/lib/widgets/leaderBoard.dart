import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Board extends StatelessWidget {
  const Board({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 35, bottom: 35),
      padding: EdgeInsets.all(20),
      width: 400,
      height: 600,
      decoration: BoxDecoration(
          color: Color.fromARGB(17, 11, 34, 57),
          borderRadius: BorderRadius.circular(7)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          "المعلمين المتفاعلين",
          style: GoogleFonts.cairo(
            fontSize: 25,
            color: Color(0xFF0b2239),
          ),
        ),
        Card(
          child: Container(
            padding: EdgeInsets.all(17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star)
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "أ. فاطمة أشكناني",
                        style: GoogleFonts.cairo(
                          fontSize: 20,
                          color: Color(0xFF0b2239),
                        ),
                      ),
                      Container(
                        width: 10,
                      ),
                      Icon(Icons.person)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          child: Container(
            padding: EdgeInsets.all(17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star_half)
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "أ. نهى الشاهين",
                        style: GoogleFonts.cairo(
                          fontSize: 20,
                          color: Color(0xFF0b2239),
                        ),
                      ),
                      Container(
                        width: 10,
                      ),
                      Icon(Icons.person)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          child: Container(
            padding: EdgeInsets.all(17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "أ. عالية أشكناني",
                        style: GoogleFonts.cairo(
                          fontSize: 20,
                          color: Color(0xFF0b2239),
                        ),
                      ),
                      Container(
                        width: 10,
                      ),
                      Icon(Icons.person)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          child: Container(
            padding: EdgeInsets.all(17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star_half),
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "أ. أمير أحمد",
                        style: GoogleFonts.cairo(
                          fontSize: 20,
                          color: Color(0xFF0b2239),
                        ),
                      ),
                      Container(
                        width: 10,
                      ),
                      Icon(Icons.person)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          child: Container(
            padding: EdgeInsets.all(17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star)
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "أ. رهف العنزي",
                        style: GoogleFonts.cairo(
                          fontSize: 20,
                          color: Color(0xFF0b2239),
                        ),
                      ),
                      Container(
                        width: 10,
                      ),
                      Icon(Icons.person)
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
