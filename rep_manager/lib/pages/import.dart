import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:csv/csv.dart';
import 'dart:io';
import 'dart:convert';

List<Student> studentData = [];

class StudentList extends StatefulWidget {
  @override
  _StudentListState createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  late Future<List<Student>> students;

  @override
  void initState() {
    super.initState();
    students = loadCsvData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student List'),
      ),
      body: FutureBuilder<List<Student>>(
        future: students,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final student = snapshot.data![index];
                return ListTile(
                  title: Text('${student.firstName} ${student.lastName}'),
                  subtitle: Text(student.course),
                );
              },
            );
          }
        },
      ),
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
  });

  factory Student.fromCsv(List<String> csvRow) {
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
    );
  }
}

Future<List<Student>> loadCsvData() async {
  final input = File(r"C:\Users\Iain Simpson\Desktop\UCLan SU\Admin Role\Sample Data.csv").openRead();
  final csvData = await input
      .transform(utf8.decoder)
      .transform(CsvToListConverter())
      .toList();

  // Skip the header row and map the remaining rows to Student objects
  studentData = csvData
      .skip(1)
      .map((row) => Student.fromCsv(row.cast<String>()))
      .toList();
  
  return csvData
      .skip(1)
      .map((row) => Student.fromCsv(row.cast<String>()))
      .toList();
}
