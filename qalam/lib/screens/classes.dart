import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qalam/screens/apps.dart';
import 'package:qalam/screens/calc.dart';
import 'package:qalam/screens/calendar.dart';
import 'package:qalam/screens/home.dart';

class Classes extends StatelessWidget {
  const Classes({super.key});

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
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
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
                        "12B",
                        style: GoogleFonts.cairo(
                            fontSize: 25, color: Color(0xFF0b2239)),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Center(child: Text('12B طلاب صف')),
                            content: Container(
                              height: 200,
                              alignment: Alignment.topRight,
                              child: Center(
                                child: Column(
                                  children: [
                                    Text(
                                      "١- محمد عمار ",
                                    ),
                                    Text(
                                      "٢- عبدالله درويش ",
                                    ),
                                    Text(
                                      "٣- عبداللطيف عيسى ",
                                    ),
                                    Text(
                                      "٤- أنس مشعل ",
                                    ),
                                    Text(
                                      "٥- إبراهيم عبدالله ",
                                    ),
                                    Text(
                                      "٦- إبراهيم العيسى ",
                                    ),
                                    Text(
                                      "٧- محمود عبدالله ",
                                    ),
                                    Text(
                                      "٨- أحمد العلي ",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ));
                },
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
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
                        "12A",
                        style: GoogleFonts.cairo(
                          fontSize: 25,
                          color: Color(0xFF0b2239),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Center(child: Text('12A طلاب صف')),
                            content: Container(
                              height: 200,
                              alignment: Alignment.topRight,
                              child: Center(
                                child: Column(
                                  children: [
                                    Text(
                                      "١- محمد عمار ",
                                    ),
                                    Text(
                                      "٢- عبدالله درويش ",
                                    ),
                                    Text(
                                      "٣- عبداللطيف عيسى ",
                                    ),
                                    Text(
                                      "٤- أنس مشعل ",
                                    ),
                                    Text(
                                      "٥- إبراهيم عبدالله ",
                                    ),
                                    Text(
                                      "٦- إبراهيم العيسى ",
                                    ),
                                    Text(
                                      "٧- محمود عبدالله ",
                                    ),
                                    Text(
                                      "٨- أحمد العلي ",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ));
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(top: 30),
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
                        "11C",
                        style: GoogleFonts.cairo(
                            fontSize: 25, color: Color(0xFF0b2239)),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Center(child: Text('11C طلاب صف')),
                            content: Container(
                              height: 200,
                              alignment: Alignment.topRight,
                              child: Center(
                                child: Column(
                                  children: [
                                    Text(
                                      "١- محمد عمار ",
                                    ),
                                    Text(
                                      "٢- عبدالله درويش ",
                                    ),
                                    Text(
                                      "٣- عبداللطيف عيسى ",
                                    ),
                                    Text(
                                      "٤- أنس مشعل ",
                                    ),
                                    Text(
                                      "٥- إبراهيم عبدالله ",
                                    ),
                                    Text(
                                      "٦- إبراهيم العيسى ",
                                    ),
                                    Text(
                                      "٧- محمود عبدالله ",
                                    ),
                                    Text(
                                      "٨- أحمد العلي ",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ));
                },
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(top: 30),
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
                        "10B",
                        style: GoogleFonts.cairo(
                          fontSize: 25,
                          color: Color(0xFF0b2239),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Center(child: Text('10B طلاب صف')),
                            content: Container(
                              height: 200,
                              alignment: Alignment.topRight,
                              child: Center(
                                child: Column(
                                  children: [
                                    Text(
                                      "١- محمد عمار ",
                                    ),
                                    Text(
                                      "٢- عبدالله درويش ",
                                    ),
                                    Text(
                                      "٣- عبداللطيف عيسى ",
                                    ),
                                    Text(
                                      "٤- أنس مشعل ",
                                    ),
                                    Text(
                                      "٥- إبراهيم عبدالله ",
                                    ),
                                    Text(
                                      "٦- إبراهيم العيسى ",
                                    ),
                                    Text(
                                      "٧- محمود عبدالله ",
                                    ),
                                    Text(
                                      "٨- أحمد العلي ",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ));
                },
              ),
            ],
          ),
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
                  color: Color(0xFFd2af41),
                ),
                title: Text(
                  "صفوفي",
                  style: GoogleFonts.cairo(
                    fontSize: 20,
                    color: Color(0xFFd2af41),
                  ),
                ),
                onTap: () {}),
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
