import 'package:flutter/material.dart';
import 'package:rephub/mainbox.dart';
import 'package:rephub/sidebar.dart';
import 'package:rephub/topbar.dart';
import 'theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> mainBoxes = [
      Container(
        color: AppTheme.primaryColor,
        child: const VolunteerListViewMainBox(),
      ),
    ];
    if (!AppTheme.isMainBoxExtended) {
      mainBoxes.add(
        Container(
          color: AppTheme.secondaryColor,
          child: const DataAnalysisMainBox(),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Column(
              children: [
                Container(
                  color: AppTheme.topBarColor,
                  child: const TopBar(),
                ),
                Row(
                  children: mainBoxes,
                ),
              ],
            ),
            Container(
              color: AppTheme.sideBarColor,
              child: const SideBar(),
            ),
          ],
        ),
      ),
    );
  }
}
