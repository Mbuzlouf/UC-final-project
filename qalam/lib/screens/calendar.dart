import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qalam/screens/apps.dart';
import 'package:qalam/screens/calc.dart';
import 'package:qalam/screens/classes.dart';
import 'package:qalam/screens/home.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

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
      body: SfCalendar(
        view: CalendarView.day,
        firstDayOfWeek: 6,
        dataSource: MeetingDataSource(getAppointments()),
        todayHighlightColor: Color(0xFF0b2239),
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
                  color: Color(0xFFd2af41),
                ),
                title: Text(
                  "التقويم",
                  style: GoogleFonts.cairo(
                    fontSize: 20,
                    color: Color(0xFFd2af41),
                  ),
                ),
                onTap: () {}),
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

List<Appointment> getAppointments() {
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));

  meetings.add(Appointment(
      startTime: startTime,
      endTime: endTime,
      subject: 'تحضير لحصة اليوم',
      color: Color(0xFF0b2239),
      recurrenceRule: 'FREQ=DAILY;COUNT=10',
      isAllDay: false));

  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}
