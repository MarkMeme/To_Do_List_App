import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/task_details/task_item.dart';

import '../theme_data.dart';

class TasksTab extends StatefulWidget {
  const TasksTab({Key? key}) : super(key: key);

  @override
  State<TasksTab> createState() => _TasksTabState();
}

class _TasksTabState extends State<TasksTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CalendarTimeline(
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(Duration(days: 365)),
            lastDate: DateTime.now().add(Duration(days: 365)),
            onDateSelected: (date) => print(date),
            leftMargin: 20,
            monthColor: Theme.of(context).textTheme.headline5!.color,
            dayColor: Theme.of(context).textTheme.headline5!.color,
            activeDayColor: Colors.white,
            activeBackgroundDayColor: MyThemeData.primaryLight,
            dotsColor: Colors.white,
            selectableDayPredicate: (date) => true,
            locale: 'en_ISO',
          ),
          Expanded(child: ListView.builder(
            itemBuilder: (context,index) { return TaskItem();},
            itemCount: 1,
          ))
        ],
      ),
    );
  }
}
