import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:rep_manager/pages/analyticsPage.dart';
import 'package:rep_manager/pages/import.dart';
import 'package:rep_manager/pages/loadingPage.dart';
import 'package:rep_manager/pages/repsPage.dart';
import 'package:rep_manager/themes/theme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefs;
String loadedDataSource = '';

class PageNotifier extends ChangeNotifier {
  Widget currentDisplay = const loadingPage(returnPage: repPage());

  void setDisplay(Widget newPage) {
    currentDisplay = newPage;
    notifyListeners();
  }
}

Future<String> pickFolder() async {
  String? selectedDirectory = await FilePicker.platform.getDirectoryPath();

  if (selectedDirectory != null) {
    // If a folder was selected, store its path
    return selectedDirectory;
  } else {
    // User canceled the picker
    return 'No folder selected';
  }
}

void main() async {

  prefs = await SharedPreferences.getInstance();

  // Try to load Data Source from shared preferences
  loadedDataSource = prefs.getString('Data Source') ?? '';

  // Check if there was no Data Source, open the file picker
  if (loadedDataSource == '') {
    loadedDataSource = await pickFolder();

    if (loadedDataSource != 'No folder selected') {
      // You can handle the folder path here
      print('Selected folder: $loadedDataSource'); // You can replace this with your logic

      // Save data source in shared preferences
      prefs.setString('Data Source', loadedDataSource);
      
    } else {
      // Handle the case when no folder is selected
      print('No folder selected');
    }
  }



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

    // Set the data notifier Data Source to the loadedDataSource
    Provider.of<DataNotifier>(context, listen: false).updateDataSouce(loadedDataSource);

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
                    icon: const Icon(Icons.insights),
                    iconSize: topBarHeight * topBarIconScaleFactor,
                    onPressed: () {
                      setState(() {
                        Provider.of<PageNotifier>(context, listen: false)
                            .setDisplay(const analyticsPage());
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
                  
                  IconButton(
                    icon: const Icon(Icons.folder),
                    iconSize: topBarHeight * topBarIconScaleFactor,
                    onPressed: () async {
                      String filePath = await pickFolder();

                      if (filePath != 'No folder selected') {
                        // You can handle the folder path here
                        print('Selected folder: $filePath'); // You can replace this with your logic

                        setState(() {
                          Provider.of<DataNotifier>(context, listen: false).updateDataSouce(filePath);
                          
                          Widget tempCurrentPage = Provider.of<PageNotifier>(context, listen: false).currentDisplay;
                          setState(() {
                            Provider.of<PageNotifier>(context, listen: false)
                                .setDisplay(loadingPage(returnPage: tempCurrentPage,));
                          });
                        });

                      } else {
                        // Handle the case when no folder is selected
                        print('No folder selected');
                      }
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

                  // Clear cache button (Debug use)
                  IconButton(
                    icon: const Text("Clear Cache"),
                    iconSize: topBarHeight * topBarIconScaleFactor,
                    onPressed: () {
                      prefs.setString("Data Source", '');
                    },
                  ),
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
