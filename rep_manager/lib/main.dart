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
  Widget currentDisplay = const loadingPage(returnPage: homePage());

  void setDisplay(Widget newPage) {
    currentDisplay = newPage;
    notifyListeners();
  }
}

void main() {
  runApp(
    // Declare all event handlers
    MultiProvider(
      providers: [
        // FocusBoxNotifier stores information on the current rep focused on the repPage
        ChangeNotifierProvider(create: (context) => FocusBoxNotifier()),

        // DataNotifier stores all imported student data and handles data management across the app
        ChangeNotifierProvider(create: (context) => DataNotifier()),

        // FilterInfoNotifier manages which filters are enabled on the repPage
        ChangeNotifierProvider(create: (context) => FilterInfoNotifier()),

        // PageNotifier handles which page is displayed currently
        ChangeNotifierProvider(create: (context) => PageNotifier()),

        // Redundant?
        //ChangeNotifierProvider(create: (context) => ConflictingInformationNotifier()),
      ],
      child: const MainApp(),
    ),
  );
}

//ignore: must_be_immutable
class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    super.initState();

    Provider.of<PageNotifier>(context, listen: false)
        .addListener(_onPageNotifierChange);
  }

  void _onPageNotifierChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //final Uri _url = Uri.parse('file:///C:/');
    //launchUrl(_url);

    /*
    Main App Layout

    - Top Bar (top 50 pixels, as defined by the variable theme.topBarHeight)
    - Content (the current selected page is displayed in this section as a widget rather than using page navigation)
    */

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            //Top Bar
            Container(
              // Size and theming of the topBar
              width: MediaQuery.sizeOf(context).width,
              height: topBarHeight,
              color: primaryColor,

              // Top bar navigation icons
              // (Displayed as a horizontal listView to protect when screen is resized)
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // Spacer
                  const SizedBox(width: 25),

                  // Navigation button to open the homePage
                  IconButton(
                    icon: const Icon(Icons.home),
                    iconSize: topBarHeight * topBarIconScaleFactor,
                    onPressed: () {
                      setState(() {
                        Provider.of<PageNotifier>(context, listen: false)
                            .setDisplay(const homePage());
                      });
                    },
                  ),

                  // Spacer
                  const SizedBox(width: 25),

                  // Navigation button to open the repPage
                  IconButton(
                    icon: const Icon(Icons.groups),
                    iconSize: topBarHeight * topBarIconScaleFactor,
                    onPressed: () {
                      setState(() {
                        Provider.of<PageNotifier>(context, listen: false)
                            .setDisplay(const repPage());
                      });
                    },
                  ),

                  // Spacer
                  const SizedBox(width: 25),

                  // TODO: make the addRepPage
                  // Navigation button to open the addRepPage
                  IconButton(
                    icon: const Icon(Icons.group_add),
                    iconSize: topBarHeight * topBarIconScaleFactor,
                    onPressed: () {
                      setState(() {
                        Provider.of<PageNotifier>(context, listen: false)
                            .setDisplay(StudentList());
                      });
                    },
                  ),

                  // Spacer
                  const SizedBox(width: 25),

                  // Redundant?
                  // Navigation button to open the infoValidationPage
                  IconButton(
                    icon: const Icon(Icons.bug_report),
                    iconSize: topBarHeight * topBarIconScaleFactor,
                    onPressed: () {
                      setState(() {
                        Provider.of<PageNotifier>(context, listen: false)
                            .setDisplay(const infoValidationPage());
                      });
                    },
                  ),

                  // Spacer
                  const SizedBox(width: 25),

                  // Refresh button to reload CSV data
                  IconButton(
                    icon: const Icon(Icons.refresh),
                    iconSize: topBarHeight * topBarIconScaleFactor,
                    onPressed: () {
                      Widget tempCurrentPage = Provider.of<PageNotifier>(context, listen: false).currentDisplay;
                      setState(() {
                        Provider.of<PageNotifier>(context, listen: false)
                            .setDisplay(loadingPage(returnPage: tempCurrentPage,));
                      });
                    },
                  ),

                  // Spacer
                  const SizedBox(width: 25),

                  // Debuf info. Displays the page width
                  Text(
                    MediaQuery.sizeOf(context).width.toString(),
                  )
                ],
              ),
            ),

            //Content
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height - topBarHeight,
              child: Provider.of<PageNotifier>(context, listen: false).currentDisplay,
            ),
          ],
        ),
      ),
    );
  }
}
