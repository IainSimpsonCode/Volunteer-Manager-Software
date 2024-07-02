import 'package:flutter/material.dart';
import 'package:volunteer_manager/Views/fullScreen.dart';
import 'package:volunteer_manager/Views/mediumScreen.dart';
import "package:volunteer_manager/themes/theme.dart";

class Content extends StatefulWidget {
  const Content({Key? key}) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  
  bool fullScreen = false;
  
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    if (MediaQuery.sizeOf(context).width >= mediumScreenSize) {
      fullScreen = true;
      return const FullScreenContent();
    }
    else {
      fullScreen = false;
      return const MediumScreenContent();
    }
  }
}
