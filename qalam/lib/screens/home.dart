import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qalam/screens/apps.dart';
import 'package:qalam/screens/calc.dart';
import 'package:qalam/screens/calendar.dart';
import 'package:qalam/screens/classes.dart';
import 'package:qalam/widgets/hero.dart';
import 'package:qalam/widgets/joinBtn.dart';
import 'package:qalam/widgets/leaderBoard.dart';
import 'package:qalam/widgets/squares.dart';
import 'package:qalam/widgets/squares2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        backgroundColor: Color(0xFFeaeaec),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[buildHeader(context), buildMenuItems(context)],
          ),
        ),
      ),
      appBar: AppBar(
        actions: [
          Container(
            width: 100,
            child: Builder(builder: (context) {
              return IconButton(
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  icon: Image.asset(
                    "assets/images/HamBar.png",
                  ));
            }),
          )
        ],
        backgroundColor: Color(0xFF0b2239),
        title: Image.asset(
          'assets/images/logo.png',
          width: 60,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroImage(),
            Squares1(),
            Squares2(),
            JoinBtn(),
            Board(),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      );
  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
                leading: const Icon(
                  Icons.home_outlined,
                  size: 30,
                  color: Color(0xFFd2af41),
                ),
                title: Text(
                  "الصفحة الرئيسية",
                  style: GoogleFonts.cairo(
                    fontSize: 20,
                    color: Color(0xFFd2af41),
                  ),
                ),
                onTap: () {}),
            const Divider(color: Colors.grey),
            ListTile(
                leading: const Icon(
                  Icons.calculate,
                  size: 30,
                  color: Color(0xFF0b2239),
                ),
                title: Text(
                  "حاسبة الدرجات",
                  style: GoogleFonts.cairo(
                    fontSize: 20,
                    color: Color(0xFF0b2239),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Calc()));
                }),
            const Divider(color: Colors.grey),
            ListTile(
                leading: const Icon(
                  Icons.calendar_month,
                  size: 30,
                  color: Color(0xFF0b2239),
                ),
                title: Text(
                  "التقويم",
                  style: GoogleFonts.cairo(
                    fontSize: 20,
                    color: Color(0xFF0b2239),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Calendar()));
                }),
            const Divider(color: Colors.grey),
            ListTile(
                leading: const Icon(
                  Icons.school,
                  size: 30,
                  color: Color(0xFF0b2239),
                ),
                title: Text(
                  "صفوفي",
                  style: GoogleFonts.cairo(
                    fontSize: 20,
                    color: Color(0xFF0b2239),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Classes()));
                }),
            const Divider(color: Colors.grey),
            ListTile(
                leading: const Icon(
                  Icons.phone_iphone,
                  size: 30,
                  color: Color(0xFF0b2239),
                ),
                title: Text(
                  "تطبيقات مفيدة",
                  style: GoogleFonts.cairo(
                    fontSize: 20,
                    color: Color(0xFF0b2239),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Apps()));
                })
          ],
        ),
      );
}
