import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qalam/screens/calc.dart';
import 'package:qalam/screens/calendar.dart';
import 'package:qalam/screens/classes.dart';
import 'package:qalam/screens/home.dart';
import 'package:url_launcher/url_launcher.dart';

class Apps extends StatelessWidget {
  const Apps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFFd2af41),
          onPressed: () {},
          child: IconButton(
            icon: Icon(Icons.home),
            onPressed: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const HomePage())),
          )),
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
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(50),
                child: Text(
                  "تطبيقات ومواقع مفيدة",
                  style:
                      GoogleFonts.cairo(fontSize: 35, color: Color(0xFF0b2239)),
                ),
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.only(right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/Kahoot.png",
                        width: 100,
                      ),
                      Text(
                        "Kahoot",
                        style: GoogleFonts.cairo(
                          fontSize: 25,
                          color: Color(0xFF0b2239),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "زيارة",
                            style: GoogleFonts.cairo(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF0b2239)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.only(right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/Classdojo.png",
                        width: 100,
                      ),
                      Text(
                        "Class Dojo",
                        style: GoogleFonts.cairo(
                          fontSize: 25,
                          color: Color(0xFF0b2239),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "زيارة",
                            style: GoogleFonts.cairo(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF0b2239)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.only(right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/maany.png",
                        width: 100,
                      ),
                      Text(
                        "معجم المعاني",
                        style: GoogleFonts.cairo(
                          fontSize: 22,
                          color: Color(0xFF0b2239),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "زيارة",
                            style: GoogleFonts.cairo(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF0b2239)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.only(right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/nearpod.png",
                        width: 100,
                      ),
                      Text(
                        "NearPod",
                        style: GoogleFonts.cairo(
                          fontSize: 25,
                          color: Color(0xFF0b2239),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "زيارة",
                            style: GoogleFonts.cairo(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF0b2239)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.only(right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/plickers.jpg",
                        width: 100,
                      ),
                      Text(
                        "Plickers",
                        style: GoogleFonts.cairo(
                          fontSize: 25,
                          color: Color(0xFF0b2239),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "زيارة",
                            style: GoogleFonts.cairo(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF0b2239)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.only(right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/slides.png",
                        width: 100,
                      ),
                      Text(
                        "Carnival Slides",
                        style: GoogleFonts.cairo(
                          fontSize: 25,
                          color: Color(0xFF0b2239),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "زيارة",
                            style: GoogleFonts.cairo(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF0b2239)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  margin: EdgeInsets.only(right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/Vyond.png",
                        width: 100,
                      ),
                      Text(
                        "Vyond",
                        style: GoogleFonts.cairo(
                          fontSize: 25,
                          color: Color(0xFF0b2239),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "زيارة",
                            style: GoogleFonts.cairo(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF0b2239)),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
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
                  color: Color(0xFF0b2239),
                ),
                title: Text(
                  "الصفحة الرئيسية",
                  style: GoogleFonts.cairo(
                    fontSize: 20,
                    color: Color(0xFF0b2239),
                  ),
                ),
                onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const HomePage()))),
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
                  color: Color(0xFFd2af41),
                ),
                title: Text(
                  "تطبيقات مفيدة",
                  style: GoogleFonts.cairo(
                    fontSize: 20,
                    color: Color(0xFFd2af41),
                  ),
                ),
                onTap: () {})
          ],
        ),
      );
}
