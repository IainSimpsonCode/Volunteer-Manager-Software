import 'package:flutter/material.dart';
import "package:volunteer_manager/themes/theme.dart";

class Content extends StatefulWidget {
  const Content({Key? key}) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      color: secondaryColor,
      child: Column(children: [
        Text("This is a big header", style: h1),
        Text("This is a slightly smaller header", style: h2),
        Text("This is a small header", style: h3),
        Text("This is some standard text.\nLorem ipsum whatever", style: paragraph),
      ]),
    ));
  }
}
