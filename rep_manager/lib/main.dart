import 'package:flutter/material.dart';
import 'package:rep_manager/pages/homePage.dart';
import 'package:rep_manager/pages/repsPage.dart';
import 'package:rep_manager/themes/theme.dart';
//import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({Key? key}) : super(key: key);

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

    //final Uri _url = Uri.parse('file:///C:/');
    //launchUrl(_url);

    return MaterialApp(
      home: Scaffold(
        body: Column( children: [
          //Top Bar
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 50,
            color: primaryColor,
            child: Row(
              children: [
                const SizedBox(width: 25),
                IconButton(
                  icon: const Icon(Icons.home),
                  iconSize: 35,
                  onPressed: () {
                    setState(() {
                      currentDisplay = const homePage();
                    });
                  }, 
                ),
                const SizedBox(width: 25),
                IconButton(
                  icon: const Icon(Icons.groups),
                  iconSize: 35,
                  onPressed: () {
                    setState(() {
                      currentDisplay = repPage();
                    });
                  }, 
                ),
                const SizedBox(width: 25),
                IconButton(
                    icon: const Icon(Icons.group_add),
                    iconSize: 35,
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
