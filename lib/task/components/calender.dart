import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_app/commons/colors.dart';
import 'package:flutter_todo_app/commons/custom_button.dart';
import 'package:flutter_todo_app/commons/dimens.dart';
import 'package:flutter_todo_app/task/Logic/create_task_provider.dart';
import 'package:table_calendar/table_calendar.dart';

import 'calender_years.dart';


class Calender extends ConsumerStatefulWidget {
  const Calender({super.key});

  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends ConsumerState<Calender> {
  //DateTime today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    var pickedDate = ref.watch<DateTime>(calenderPickedDate);
    final selectedYear = ref.watch(selectedYearProvider);
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;
    var theme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        children: [
          TableCalendar(
            locale: 'en_Us',
            rowHeight: 53,
            daysOfWeekHeight: 70,
            onHeaderTapped:_onHeaderTapped,
            calendarStyle: CalendarStyle(
              outsideTextStyle: theme.titleSmall!,
              defaultTextStyle: theme.titleSmall!,
              weekendTextStyle: theme.titleSmall!,
          
              selectedTextStyle:theme.titleSmall!.copyWith(color: whiteColor),
              selectedDecoration: BoxDecoration(
                  color: blueColor,
                  shape: BoxShape.circle
              ),
              todayTextStyle: theme.titleSmall!.copyWith(color: whiteColor),
              todayDecoration: BoxDecoration(
                  color: blueColor,
                  shape: BoxShape.circle
              ),
          
            ),
          
            daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: theme.titleSmall!,
                weekendStyle: theme.titleSmall!
            ),
            headerStyle: HeaderStyle(
                titleTextStyle: theme.titleMedium!,
                headerPadding: EdgeInsets.symmetric(vertical: 20),
                formatButtonVisible: false,
                titleCentered: true),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: (day)=>isSameDay(day,pickedDate),
            focusedDay: DateTime(selectedYear, pickedDate.month, 1),
            firstDay: DateTime(selectedYear, 1, 1),
            lastDay:DateTime(2050, DateTime.now().month, DateTime.now().day),
            onDaySelected: _onDaySelected,
            //calendarFormat: CalendarFormat.month,
          ),
          SizedBox(height: 20),

        ],
      ),
    );
  }

  _onDaySelected(DateTime day, DateTime focusedDay){
    ref.read(calenderPickedDate.notifier).state = day;
    Navigator.pop(context);

  }
  _onHeaderTapped(DateTime day){
    showYearPicker(context, ref);
  }
}

