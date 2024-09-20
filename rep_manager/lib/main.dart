import 'package:flutter/material.dart';
import 'package:rep_manager/pages/homePage.dart';
import 'package:rep_manager/pages/import.dart';
import 'package:rep_manager/pages/infoValidationPage.dart';
import 'package:rep_manager/pages/loadingPage.dart';
import 'package:rep_manager/pages/repsPage.dart';
import 'package:rep_manager/themes/theme.dart';
import 'package:provider/provider.dart';
//import 'package:url_launcher/url_launcher.dart';
//import 'package:path/path.dart';

class PageNotifier extends ChangeNotifier {
  Widget currentDisplay = const loadingPage();

  void setDisplay(Widget newPage) {
    currentDisplay = newPage;
    notifyListeners();
  }
}

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FocusBoxNotifier()),
        ChangeNotifierProvider(create: (context) => DataNotifier()),
        ChangeNotifierProvider(create: (context) => FilterInfoNotifier()),
        ChangeNotifierProvider(create: (context) => PageNotifier()),
        ChangeNotifierProvider(create: (context) => ConflictingInformationNotifier()),
      ],
      child: MainApp(),
    ),
  );
}

//ignore: must_be_immutable
class MainApp extends StatefulWidget {
  MainApp({Key? key}) : super(key: key);

  //final entryPoint = const loadingPage();
  //Widget currentDisplay = const loadingPage();

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp>
{

  @override
  void initState() {
    super.initState();
    
    Provider.of<PageNotifier>(context, listen: false).addListener(_onPageNotifierChange);
  }

  void _onPageNotifierChange() {
    setState(() {
      
    });
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
                      Provider.of<PageNotifier>(context, listen: false).setDisplay(const homePage());
                    });
                  }, 
                ),
                const SizedBox(width: 25),
                IconButton(
                  icon: const Icon(Icons.groups),
                  iconSize: 35,
                  onPressed: () {
                    setState(() {
                      Provider.of<PageNotifier>(context, listen: false).setDisplay(const repPage());
                    });
                  }, 
                ),
                const SizedBox(width: 25),
                IconButton(
                    icon: const Icon(Icons.group_add),
                    iconSize: 35,
                    onPressed: () {
                      setState(() {
                        Provider.of<PageNotifier>(context, listen: false).setDisplay(StudentList());
                      });
                    },
                  ),
                const SizedBox(width: 25),
                IconButton(
                    icon: const Icon(Icons.bug_report),
                    iconSize: 35,
                    onPressed: () {
                      setState(() {
                        Provider.of<PageNotifier>(context, listen: false).setDisplay(const infoValidationPage());
                      });
                    },
                  ),
                const SizedBox(width: 25,),
                Text(MediaQuery.sizeOf(context).width.toString(),)
              ],
            ),
          ),

          //Content
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height - 50,
            child: Provider.of<PageNotifier>(context, listen: false).currentDisplay,
          ),
        ], ),
      ),
    );
  }
}
