import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qalam/screens/apps.dart';
import 'package:qalam/screens/calendar.dart';
import 'package:qalam/screens/classes.dart';
import 'package:qalam/screens/home.dart';

class Calc extends StatelessWidget {
  const Calc({super.key});

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
      body: Container(
        padding: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "حاسبة درجات الطالب",
                style: GoogleFonts.cairo(
                  fontSize: 35,
                  color: Color(0xFF0b2239),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "الأسابيع الست الأولى",
                  style: GoogleFonts.cairo(
                    fontSize: 25,
                    color: Color(0xFF0b2239),
                  ),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(right: 30, left: 30, top: 20, bottom: 20),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  //controller: _num1,
                  decoration: InputDecoration(
                      hintText: 'درجة الشفوي',
                      hintStyle: TextStyle(
                        fontFamily: 'Cairo',
                      ),
                      hintTextDirection: TextDirection.rtl,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 30, left: 30, bottom: 20),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  //controller: _num1,
                  decoration: InputDecoration(
                      hintText: 'الورقة التقويمية',
                      hintStyle: TextStyle(
                        fontFamily: 'Cairo',
                      ),
                      hintTextDirection: TextDirection.rtl,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 30, left: 30, bottom: 20),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  //controller: _num1,
                  decoration: InputDecoration(
                      hintText: 'الأعمال التحريرية',
                      hintStyle: TextStyle(
                        fontFamily: 'Cairo',
                      ),
                      hintTextDirection: TextDirection.rtl,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 30, left: 30),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  //controller: _num1,
                  decoration: InputDecoration(
                      hintText: 'الاختبار القصير',
                      hintStyle: TextStyle(
                        fontFamily: 'Cairo',
                      ),
                      hintTextDirection: TextDirection.rtl,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "الأسابيع المتبقية",
                  style: GoogleFonts.cairo(
                    fontSize: 25,
                    color: Color(0xFF0b2239),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 30, left: 30, top: 20),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  //controller: _num1,
                  decoration: InputDecoration(
                      hintText: 'درجة الشفوي',
                      hintStyle: TextStyle(
                        fontFamily: 'Cairo',
                      ),
                      hintTextDirection: TextDirection.rtl,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 30, left: 30, top: 20),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  //controller: _num1,
                  decoration: InputDecoration(
                      hintText: 'الأعمال التحريرية',
                      hintStyle: TextStyle(
                        fontFamily: 'Cairo',
                      ),
                      hintTextDirection: TextDirection.rtl,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 30, left: 30, top: 20),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  //controller: _num1,
                  decoration: InputDecoration(
                      hintText: 'العرض التقديمي',
                      hintStyle: TextStyle(
                        fontFamily: 'Cairo',
                      ),
                      hintTextDirection: TextDirection.rtl,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "الاختبارات",
                  style: GoogleFonts.cairo(
                    fontSize: 25,
                    color: Color(0xFF0b2239),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 30, left: 30, top: 20),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  //controller: _num1,
                  decoration: InputDecoration(
                      hintText: 'الاختبار العملي',
                      hintStyle: TextStyle(
                        fontFamily: 'Cairo',
                      ),
                      hintTextDirection: TextDirection.rtl,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 30, left: 30, top: 20),
                child: TextField(
                  textDirection: TextDirection.rtl,
                  //controller: _num1,
                  decoration: InputDecoration(
                      hintText: 'الاختبار التحريري',
                      hintStyle: TextStyle(
                        fontFamily: 'Cairo',
                      ),
                      hintTextDirection: TextDirection.rtl,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 40),
                width: 140,
                height: 100,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0b2239)),
                    child: Text(
                      '!احسب',
                      style: GoogleFonts.cairo(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 100, top: 10),
                width: 140,
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(17, 11, 34, 57),
                    borderRadius: BorderRadius.circular(2)),
                child: Center(
                  child: Text(
                    ":النتيجة",
                    style: GoogleFonts.cairo(
                      fontSize: 20,
                      color: Color.fromARGB(255, 11, 34, 57),
                    ),
                  ),
                ),
              )
            ],
          ),
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
                  color: Color(0xFFd2af41),
                ),
                title: Text(
                  "حاسبة الدرجات",
                  style: GoogleFonts.cairo(
                    fontSize: 20,
                    color: Color(0xFFd2af41),
                  ),
                ),
                onTap: () {}),
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
