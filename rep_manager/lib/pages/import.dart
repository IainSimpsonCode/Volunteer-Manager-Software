import 'package:flutter/material.dart';
import 'package:csv/csv.dart';
import 'dart:io';
import 'dart:convert';
import 'package:path/path.dart' as path;
import 'package:provider/provider.dart';

//List<Student> studentData = [];
//List<List<List<String>>> groups = [];

class DataNotifier extends ChangeNotifier {
  List<Student> _studentData = [];
  List<List<List<String>>> _groups = [];

  List<Student> get studentData => _studentData;
  List<List<List<String>>> get groups => _groups;

  void updateStudentData(List<Student> newValue) {
    _studentData = newValue;
    notifyListeners();
  }

  void updateGroups(List<List<List<String>>> newValue) {
    _groups = newValue;
    notifyListeners();
  }
}

class StudentList extends StatefulWidget {
  @override
  _StudentListState createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student List'),
      ),
      body: ListView.builder(
              itemCount: Provider.of<DataNotifier>(context, listen: false).studentData.length,
              itemBuilder: (context, index) {
                final student = Provider.of<DataNotifier>(context, listen: false).studentData[index];
                return ListTile(
                  title: Text('${student.firstName} ${student.lastName}'),
                  subtitle: Text(student.course),
                );
              },
            )
    );
  }
}

class Student {
  final String school;
  final String course;
  final String year;
  final String studentNumber;
  final String preferredName;
  final String firstName;
  final String lastName;
  final String email;
  final String campus;
  final String level;
  final String mode;
  final String startDate;
  final String endDate;
  final List<String> labels;

  Student({
    required this.school,
    required this.course,
    required this.year,
    required this.studentNumber,
    required this.preferredName,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.campus,
    required this.level,
    required this.mode,
    required this.startDate,
    required this.endDate,
    required this.labels
  });

  factory Student.fromCsv(List<String> csvRow, String group) {
    return Student(
      school: csvRow[0],
      course: csvRow[1],
      year: csvRow[2],
      studentNumber: csvRow[3],
      preferredName: csvRow[4],
      firstName: csvRow[5],
      lastName: csvRow[6],
      email: csvRow[7],
      campus: csvRow[8],
      level: csvRow[9],
      mode: csvRow[10],
      startDate: csvRow[11],
      endDate: csvRow[12],
      labels: [group],
    );
  }
}

Future<List<Student>> loadCsvData(BuildContext context, String folderPath) async {
  print("Reloading CSV Data");

  List<File> csvFiles = [];
  List<Student> csvData = [];
  List<String> fileNames = [];

  final directory = Directory(folderPath);

  if (await directory.exists()) {
    await for (var entity
        in directory.list(recursive: false, followLinks: false)) {
      if (entity is File && entity.path.endsWith('.csv')) {
        final csvFile = File(entity.path);
        csvFiles.add(csvFile);
        print('Found CSV file: ${path.basename(entity.path).substring(0, path.basename(entity.path).length - 4)}');
        fileNames.add(path.basename(csvFile.path).substring(0, path.basename(entity.path).length - 4));
      }
    }
  } else {
    print('Directory does not exist');
  }

  for (File file in csvFiles) {

    List<List<dynamic>> csvList = await file.openRead()
      .transform(utf8.decoder)
      .transform(CsvToListConverter())
      .toList();
    List<Student> studentList = csvList
      .skip(1)
      .map((row) => Student.fromCsv(
        row.cast<String>(), 
        path.basename(file.path).substring(
          0, 
          path.basename(file.path).length - 4
        )
      ))
      .toList();

    csvData.addAll(studentList);
  }

  //groups.clear();
  //groups.add(
  Provider.of<DataNotifier>(context, listen: false).updateGroups(
    [[
      ["All Groups"],
      fileNames
    ]]
  );
  
  Provider.of<DataNotifier>(context, listen: false).updateStudentData(csvData);
  return csvData;

  // final csvData = await input
  //     .transform(utf8.decoder)
  //     .transform(CsvToListConverter())
  //     .toList();

  // Skip the header row and map the remaining rows to Student objects
  // studentData = csvData
  //     .skip(1)
  //     .map((row) => Student.fromCsv(row.cast<String>()))
  //     .toList();
  
  // return csvData
  //     .skip(1)
  //     .map((row) => Student.fromCsv(row.cast<String>()))
  //     .toList();
}

void findCsvFiles(String folderPath) async {
  final directory = Directory(folderPath);

  if (await directory.exists()) {
    await for (var entity
        in directory.list(recursive: false, followLinks: false)) {
      if (entity is File && entity.path.endsWith('.csv')) {
        print('Found CSV file: ${entity.path}');
      }
    }
  } else {
    print('Directory does not exist');
  }
}
