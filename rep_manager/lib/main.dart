import 'package:flutter/material.dart';
import 'package:rep_manager/pages/homePage.dart';
import 'package:rep_manager/pages/repsPage.dart';
import 'package:rep_manager/themes/theme.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({Key? key}) : super(key: key);

  //Widget currentDisplay = homePage();

  @override
  State<MainApp> createState() => _MainAppState();
}
class _MainAppState extends State<MainApp>
{
  Widget currentDisplay = repPage();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column( children: [
          //Top Bar
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 75,
            color: primaryColor,
            child: Row(
              children: [
                const SizedBox(width: 25),
                IconButton(
                  icon: const Icon(Icons.home),
                  iconSize: 50,
                  onPressed: () {
                    setState(() {
                      currentDisplay = const homePage();
                    });
                  }, 
                ),
                const SizedBox(width: 25),
                IconButton(
                  icon: const Icon(Icons.groups),
                  iconSize: 50,
                  onPressed: () {
                    setState(() {
                      currentDisplay = repPage();
                    });
                  }, 
                ),
                const SizedBox(width: 25),
                IconButton(
                    icon: const Icon(Icons.group_add),
                    iconSize: 50,
                    onPressed: () {

                    },
                  ),
              ],
            ),
          ),

          //Content
          currentDisplay,
        ], ),
      ),
    );
  }
}
