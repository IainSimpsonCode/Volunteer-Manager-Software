import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rep_manager/pages/repsPage.dart';
import 'import.dart';

class ConflictingInformationNotifier extends ChangeNotifier {
  List<List<Student>> conflictingRecords = [];

  void addRecord(Student student1, Student student2) {
    conflictingRecords.add([student1, student2]);
  }
}

class loadingPage extends StatefulWidget {
  const loadingPage({Key? key, required this.returnPage}) : super(key: key);
  
  final Widget returnPage;

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

    Provider.of<FilterInfoNotifier>(context, listen: false).clearFilters();
    Provider.of<FocusBoxNotifier>(context, listen: false).clearFocusBox();

    return FutureBuilder<void>(
      future: loadCsvData(context, Provider.of<DataNotifier>(context, listen: false).dataSource),
      //future: loadCsvData(context, dataFilePath),
      builder: (context, snapshot) {
        // Check the connection state
        if (snapshot.connectionState == ConnectionState.waiting) {
          // While waiting, show a spinner
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          // If there was an error, show an error message
          return Text('Error: ${snapshot.error}');
        } else {
          // When complete, show the main content
          return widget.returnPage;
        }
      },
    );
  }
}

class reloadingPage extends StatefulWidget {
  const reloadingPage({Key? key, required this.returnPage}) : super(key: key);

  final Widget returnPage;

  @override
  State<loadingPage> createState() => _loadingPageState();
}

class _reloadingPageState extends State<reloadingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Save data here
    /*
      1. Sort through the contactInformation.csv file to find any new reps that have been inputted
      2. Correct the information for any editted reps
    */

    return FutureBuilder<void>(
      future: loadCsvData(context, Provider.of<DataNotifier>(context, listen: false).dataSource),
      //future: loadCsvData(context, dataFilePath),
      builder: (context, snapshot) {
        // Check the connection state
        if (snapshot.connectionState == ConnectionState.waiting) {
          // While waiting, show a spinner
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          // If there was an error, show an error message
          return Text('Error: ${snapshot.error}');
        } else {
          // When complete, show the main content
          return widget.returnPage;
        }
      },
    );
  }
}

class FolderPickerScreen extends StatefulWidget {
  @override
  _FolderPickerScreenState createState() => _FolderPickerScreenState();
}

class _FolderPickerScreenState extends State<FolderPickerScreen> {
  String? selectedFolderPath;

  Future<void> pickFolder() async {
    String? selectedDirectory = await FilePicker.platform.getDirectoryPath();

    if (selectedDirectory != null) {
      // If a folder was selected, store its path
      setState(() {
        selectedFolderPath = selectedDirectory;
      });
    } else {
      // User canceled the picker
      setState(() {
        selectedFolderPath = 'No folder selected';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Folder Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: pickFolder,
              child: const Text('Pick a Folder'),
            ),
            SizedBox(height: 20),
            Text(
              selectedFolderPath ?? 'No folder selected',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
