import 'package:flutter/material.dart';
import 'package:rep_manager/pages/homePage.dart';
import 'import.dart';

class loadingPage extends StatefulWidget {
  const loadingPage({Key? key}) : super(key: key);

  @override
  State<loadingPage> createState() => _loadingPageState();
}

class _loadingPageState extends State<loadingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: loadCsvData(context, r"C:\Users\Iain Simpson\Desktop\UCLan SU\Admin Role\Volunteer Manager Software Sample Data"),
      builder: (context, snapshot) {
        // Check the connection state
        if (snapshot.connectionState == ConnectionState.waiting) {
          // While waiting, show a spinner
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          // If there was an error, show an error message
          return Text('Error: ${snapshot.error}');
        } else {
          // When complete, show the main content
          return const homePage();
        }
      },
    );
  }
}


