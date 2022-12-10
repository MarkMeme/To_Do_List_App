import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/AppConfigProvider.dart';
import '../theme_data.dart';

class AddTaskBottomSheet extends StatefulWidget {
  const AddTaskBottomSheet({Key? key}) : super(key: key);

  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      foregroundDecoration: BoxDecoration(),
      padding: EdgeInsets.all(18),
      color: provider.appTheme == ThemeMode.dark
          ? MyThemeData.blackColor
          : MyThemeData.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.addNewTask,
            style: Theme.of(context).textTheme.headline3,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            AppLocalizations.of(context)!.taskDetails,
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(
            height: 7,
          ),
          Form(
              child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    border: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            //  color: Theme.of(context).textTheme.headline4!.color
                            )),
                    hintText: AppLocalizations.of(context)!.enterYourTask,
                    hintStyle: Theme.of(context).textTheme.headline4),
              ),
              Divider(
                thickness: 2,
                color: Colors.white,
              ),
              const SizedBox(
                height: 7,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: provider.appTheme == ThemeMode.light
                          ? MyThemeData.blackColor
                          : MyThemeData.whiteColor,
                    )),
                    hintText: AppLocalizations.of(context)!.editDescription,
                    hintStyle: Theme.of(context).textTheme.headline4),
                maxLines: 4,
                minLines: 2,
              ),
              Divider(
                thickness: 2,
                color: Colors.white,
              ),
            ],
          )),
          const SizedBox(
            height: 18,
          ),
          Text(
            AppLocalizations.of(context)!.selectDate,
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(height: 18),
          InkWell(
            onTap: () {},
            child: Text(
              '18/18/1818',
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 18),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(MyThemeData.primaryLight)),
            child: Text(
              AppLocalizations.of(context)!.add,
              style: Theme.of(context).textTheme.headline5,
            ),
          )
        ],
      ),
    );
  }
}
