import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/home/tasks_tab.dart';
import 'package:to_do_app/settings_details/settings_tab.dart';

import '../providers/AppConfigProvider.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'HomePageName';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.toDoList,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: tabs[selectedIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu_book,
                  size: 25,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 25,
                ),
                label: '')
          ],
          onTap: (i) {
            selectedIndex = i;
            setState(() {});
          },
          currentIndex: selectedIndex,
        ),
      ),

    );
  }

  List<Widget> tabs = [TasksTab(), SettingsTab()];
}
