//Data retreived from here will later be intergrated with web data / api calls / persistance

import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:io';
import 'package:csv/csv.dart';

const List<String> schools = [
  "Engineering and Computing",
  "Nursing and Midwifery",
  "Medicine and Dentistry",
  "Business",
  "Health, Social and Sport",
  "Veterinary Medicine",
  "Psychology and Humanities",
  "Law and Policing",
  "Arts and Media",
  "Pharmacy and Biomedical Sciences"
];
const List<int> reps = [78, 52, 32, 25, 19, 7, 46, 39, 28, 24];
const List<int> trainedReps = [57, 48, 25, 20, 16, 6, 40, 32, 19, 17];
// const List<List<TableRow>> repList = [
//   [
//     TableRow(children: [Text("Item 1"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 2"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 3"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 4"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 5"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 6"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 7"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 8"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 9"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 10"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 11"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 1"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 2"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 3"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 4"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 5"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 6"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 7"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 8"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 9"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 10"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 11"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 1"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 2"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 3"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 4"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 5"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 6"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 7"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 8"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 9"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 10"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("Item 11"), Text("Test"), Text("Test2")]),
//   ],
//   [
//     TableRow(children: [Text("2Item 1"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("2Item 2"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("2Item 3"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("2Item 4"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("2Item 5"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("2Item 6"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("2Item 7"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("2Item 8"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("2Item 9"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("2Item 10"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("2Item 11"), Text("Test"), Text("Test2")]),
//   ],
//   [
//     TableRow(children: [Text("3Item 1"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("3Item 2"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("3Item 3"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("3Item 4"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("3Item 5"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("3Item 6"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("3Item 7"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("3Item 8"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("3Item 9"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("3Item 10"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("3Item 11"), Text("Test"), Text("Test2")]),
//   ],
//   [
//     TableRow(children: [Text("4Item 1"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("4Item 2"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("4Item 3"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("4Item 4"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("4Item 5"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("4Item 6"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("4Item 7"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("4Item 8"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("4Item 9"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("4Item 10"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("4Item 11"), Text("Test"), Text("Test2")]),
//   ],
//   [
//     TableRow(children: [Text("5Item 1"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("5Item 2"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("5Item 3"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("5Item 4"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("5Item 5"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("5Item 6"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("5Item 7"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("5Item 8"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("5Item 9"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("5Item 10"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("5Item 11"), Text("Test"), Text("Test2")]),
//   ],
//   [
//     TableRow(children: [Text("6Item 1"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("6Item 2"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("6Item 3"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("6Item 4"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("6Item 5"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("6Item 6"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("6Item 7"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("6Item 8"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("6Item 9"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("6Item 10"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("6Item 11"), Text("Test"), Text("Test2")]),
//   ],
//   [
//     TableRow(children: [Text("7Item 1"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("7Item 2"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("7Item 3"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("7Item 4"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("7Item 5"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("7Item 6"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("7Item 7"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("7Item 8"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("7Item 9"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("7Item 10"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("7Item 11"), Text("Test"), Text("Test2")]),
//   ],
//   [
//     TableRow(children: [Text("8Item 1"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("8Item 2"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("8Item 3"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("8Item 4"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("8Item 5"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("8Item 6"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("8Item 7"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("8Item 8"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("8Item 9"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("8Item 10"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("8Item 11"), Text("Test"), Text("Test2")]),
//   ],
//   [
//     TableRow(children: [Text("9Item 1"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("9Item 2"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("9Item 3"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("9Item 4"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("9Item 5"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("9Item 6"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("9Item 7"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("9Item 8"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("9Item 9"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("9Item 10"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("9Item 11"), Text("Test"), Text("Test2")]),
//   ],
//   [
//     TableRow(children: [Text("10Item 1"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("10Item 2"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("10Item 3"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("10Item 4"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("10Item 5"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("10Item 6"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("10Item 7"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("10Item 8"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("10Item 9"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("10Item 10"), Text("Test"), Text("Test2")]),
//     TableRow(children: [Text("10Item 11"), Text("Test"), Text("Test2")]),
//   ]
// ];

Future<List<List<dynamic>>> readFile() async {
  print("Reading file.");
  try {
    final Directory directory = Directory.current;

    final file = File(
        //r"C:\Users\Iain Simpson\Desktop\UCLan SU\Admin Role\Engineering and Computing 2324 CSV.csv");
        directory.path + r"\lib\Engineering and Computing 2324 CSV.csv");

    final input = await file.readAsBytes();

    String csvInput = String.fromCharCodes(input);

    return const CsvToListConverter()
        .convert(csvInput, shouldParseNumbers: false);
  } catch (e) {
    // If encountering an error, return 0
    return [
      [e.toString()]
    ];
  }
}
