import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:rep_manager/pages/homePage.dart';
import 'package:rep_manager/pages/import.dart';
import 'package:rep_manager/pages/loadingPage.dart';
import 'package:rep_manager/pages/repsPage.dart';
import 'package:rep_manager/themes/theme.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FocusBoxNotifier()),
        ChangeNotifierProvider(create: (context) => DataNotifier()),
      ],
      child: MainApp(),
    ),
  );
}

class MainApp extends StatefulWidget {
  MainApp({Key? key}) : super(key: key);

  //final entryPoint = const loadingPage();
  Widget currentDisplay = const loadingPage();

  @override
  State<MainApp> createState() => _MainAppState();
}
class _MainAppState extends State<MainApp>
{

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
                      widget.currentDisplay = const homePage();
                    });
                  }, 
                ),
                const SizedBox(width: 25),
                IconButton(
                  icon: const Icon(Icons.groups),
                  iconSize: 35,
                  onPressed: () {
                    setState(() {
                      widget.currentDisplay = repPage();
                    });
                  }, 
                ),
                const SizedBox(width: 25),
                IconButton(
                    icon: const Icon(Icons.group_add),
                    iconSize: 35,
                    onPressed: () {
                      setState(() {
                        widget.currentDisplay = StudentList();
                      });
                    },
                  ),
              ],
            ),
          ),

          //Content
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height - 50,
            child: widget.currentDisplay,
          ),
        ], ),
      ),
    );
  }
}
