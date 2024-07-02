import 'package:flutter/material.dart';
import 'package:volunteer_manager/Widgets/informationTab.dart';
import 'package:volunteer_manager/Widgets/volunteerList.dart';
import "package:volunteer_manager/themes/theme.dart";

class MediumScreenContent extends StatefulWidget {
  const MediumScreenContent({Key? key}) : super(key: key);

  @override
  State<MediumScreenContent> createState() => _MediumScreenContentState();
}

class _MediumScreenContentState extends State<MediumScreenContent> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      child: const Expanded(child: VolunteerListView()),
    );
  }
}
