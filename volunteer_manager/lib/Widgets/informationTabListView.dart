import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volunteer_manager/Data/globals.dart';
import 'package:volunteer_manager/Widgets/informationTab.dart';
import "package:volunteer_manager/themes/theme.dart";

// class InformationTabListView extends StatefulWidget {
//   InformationTabListView({Key? key, required this.openTabs}) : super(key: key);

//   final List<InformationTab> openTabs;

//   @override
//   State<InformationTabListView> createState() => _InformationTabListViewState();
// }

// class _InformationTabListViewState extends State<InformationTabListView> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: widget.openTabs,
//     );
//   }
// }

// class InformationTabListView extends StatefulWidget {
//   InformationTabListView({Key? key, required this.openTabs}) : super(key: key);

//   List<InformationTab> openTabs;

//   @override
//   State<InformationTabListView> createState() => _InformationTabListViewState();
// }

// class _InformationTabListViewState extends State<InformationTabListView> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: widget.openTabs,
//     );
//   }

//   @override
//   void didUpdateWidget(InformationTabListView oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (oldWidget.openTabs != widget.openTabs) {
//       setState(() {}); // Trigger rebuild if openTabs has changed
//     }
//   }
// }

class InformationTabListView extends StatelessWidget {
  InformationTabListView({Key? key, required this.openTabs}) : super(key: key);

  List<InformationTab> openTabs;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: openTabs,
    );
  }
}
