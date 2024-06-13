// List of all volunteers
import 'package:flutter/material.dart';
import 'package:volunteer_manager/Data/volunteer.dart';
import 'package:volunteer_manager/Widgets/informationTab.dart';

// List<List<String>> allVolunteers = [
//   ["item 1", "test data 1", "test data 2", "test data 3"],
//   ["item 2", "test data 1", "test data 2", "test data 3"],
//   ["item 3", "test data 1", "test data 2", "test data 3"],
//   ["item 4", "test data 1", "test data 2", "test data 3"],
//   ["item 5", "test data 1", "test data 2", "test data 3"],
//   ["item 6", "test data 1", "test data 2", "test data 3"],
//   ["item 7", "test data 1", "test data 2", "test data 3"],
//   ["item 8", "test data 1", "test data 2", "test data 3"],
//   ["item 9", "test data 1", "test data 2", "test data 3"],
//   ["item 10", "test data 1", "test data 2", "test data 3"],
//   ["item 11", "test data 1", "test data 2", "test data 3"],
//   ["item 12", "test data 1", "test data 2", "test data 3"],
//   ["item 13", "test data 1", "test data 2", "test data 3"],
//   ["item 14", "test data 1", "test data 2", "test data 3"],
//   ["item 15", "test data 1", "test data 2", "test data 3"],
//   ["item 16", "test data 1", "test data 2", "test data 3"],
//   ["item 17", "test data 1", "test data 2", "test data 3"],
//   ["item 18", "test data 1", "test data 2", "test data 3"],
//   ["item 19", "test data 1", "test data 2", "test data 3"],
//   ["item 20", "test data 1", "test data 2", "test data 3"],
//   ["item 21", "test data 1", "test data 2", "test data 3"],
//   ["item 22", "test data 1", "test data 2", "test data 3"],
//   ["item 23", "test data 1", "test data 2", "test data 3"],
//   ["item 24", "test data 1", "test data 2", "test data 3"],
//   ["item 25", "test data 1", "test data 2", "test data 3"],
//   ["item 26", "test data 1", "test data 2", "test data 3"],
//   ["item 27", "test data 1", "test data 2", "test data 3"],
//   ["item 28", "test data 1", "test data 2", "test data 3"],
//   ["item 29", "test data 1", "test data 2", "test data 3"],
//   ["item 30", "test data 1", "test data 2", "test data 3"],
//   ["item 31", "test data 1", "test data 2", "test data 3"],
//   ["item 32", "test data 1", "test data 2", "test data 3"],
//   ["item 33", "test data 1", "test data 2", "test data 3"],
//   ["item 34", "test data 1", "test data 2", "test data 3"],
//   ["item 35", "test data 1", "test data 2", "test data 3"],
//   ["item 36", "test data 1", "test data 2", "test data 3"],
//   ["item 37", "test data 1", "test data 2", "test data 3"],
//   ["item 38", "test data 1", "test data 2", "test data 3"],
//   ["item 39", "test data 1", "test data 2", "test data 3"],
//   ["item 40", "test data 1", "test data 2", "test data 3"],
// ];

List<Volunteer> allVolunteers = [
  Volunteer(name: "Iain", school: "Engineering and Computing", yearGroup: 1, studentNumber: "G1234")
];

// Components running in background
// InformationTabListView backgroundInformationTabListView = InformationTabListView(key: const Key("InformationTabListView"));
// InformationTabListView getBackgroundInformationTabListView() {
//   return backgroundInformationTabListView;
// }
// void setBackgroundInformationTabListView(InformationTabListView newState) {
//   backgroundInformationTabListView = newState;
// }

// // Open tabs
// class OpenTabsModel extends ChangeNotifier {
//   List<InformationTab> _openTabs = [];

//   List<InformationTab> get openTabs => _openTabs;

  // set openTabs(List<InformationTab> tabs) {
  //   _openTabs = tabs;
  //   notifyListeners();
  // }

//   void addTab(InformationTab tab) {
//     _openTabs.add(tab);
//     notifyListeners();
//   }

//   void removeTab(InformationTab tab) {
//     _openTabs.remove(tab);
//     notifyListeners();
//   }
// }

List<InformationTab> openTabs = [];

