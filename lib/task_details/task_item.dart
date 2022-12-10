import 'package:flutter/material.dart';
import 'package:to_do_app/theme_data.dart';

class TaskItem extends StatefulWidget {
  const TaskItem({Key? key}) : super(key: key);

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.circular(30)),
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 80,
                  width: 6,
                  decoration: BoxDecoration(
                    color: MyThemeData.primaryLight,
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
               SizedBox(width: 5,),
               Expanded(child: Column(
                  children: [
                    Text('Task Title',style: Theme.of(context).textTheme.headline2,),
                    Text('Task description0000000000000000000000000000000000000',style: Theme.of(context).textTheme.headline3,)
                  ],
                ),
                ),


                InkWell(
                  onTap: () {
                    // DATA BASE
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 18),
                    decoration: BoxDecoration(
                        color: MyThemeData.primaryLight,
                        borderRadius: BorderRadius.circular(30)),
                    child: Icon(
                      Icons.check_rounded,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ));
  }
}
