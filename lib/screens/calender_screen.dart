import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';

class CalenderScreen extends StatefulWidget {
  @override
  _CalenderScreenState createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TableCalendar(
            daysOfWeekStyle: const DaysOfWeekStyle(
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
            ),
            initialCalendarFormat: CalendarFormat.month,
            // calendarStyle: CalendarStyle(
            //   // todayColor: Colors.blue,
            //   selectedColor: Theme.of(context).primaryColor,
            //   todayStyle: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 22.0,
            //       color: Colors.white),
            // ),
            headerStyle: HeaderStyle(
                titleTextStyle: const TextStyle(color: Colors.white),
                headerPadding: EdgeInsets.all(0.0),
                centerHeaderTitle: true,
                formatButtonVisible: false,
                leftChevronIcon: const Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                ),
                rightChevronIcon: const Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                )
                // formatButtonDecoration: BoxDecoration(
                //   color: Colors.brown,
                //   borderRadius: BorderRadius.circular(22.0),
                // ),
                // formatButtonTextStyle: TextStyle(color: Colors.white),
                // formatButtonShowsNext: false,
                ),
            startingDayOfWeek: StartingDayOfWeek.monday,
            // onDaySelected: (date, events) {
            //   print(date.toUtc());
            // },
            builders: CalendarBuilders(
              selectedDayBuilder: (context, date, events) => Container(
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(8.0)),
                child: Text(
                  date.day.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              todayDayBuilder: (context, date, events) => Container(
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  date.day.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            calendarController: _controller,
          )
        ],
      ),
    );
  }
}
