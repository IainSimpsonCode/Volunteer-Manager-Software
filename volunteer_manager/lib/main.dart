import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volunteer_manager/Data/globals.dart';
import 'package:volunteer_manager/Data/volunteer.dart';
import 'package:volunteer_manager/Page%20Sections/content.dart';
import 'package:volunteer_manager/Page%20Sections/footer.dart';
import 'package:volunteer_manager/Page%20Sections/header.dart';
import 'package:volunteer_manager/Page%20Sections/sidebar.dart';

void main() {
  allVolunteers = generateVolunteers();
  
  // runApp(
  //   ChangeNotifierProvider(
  //     create: (context) => OpenTabsModel(),
  //     child: const MainApp(),
  //   ),
  // );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(        
        body: Row(children: [
          Sidebar(),
          VerticalDivider(thickness: 1, width: 1),
          Expanded( child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            Header(),
            Expanded( child: Content()),
            Footer(),
          ],), ),
        ],)
      ),
    );
  }
}
