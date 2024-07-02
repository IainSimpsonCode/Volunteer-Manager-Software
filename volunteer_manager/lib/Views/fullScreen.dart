import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volunteer_manager/Data/globals.dart';
import 'package:volunteer_manager/Widgets/informationTab.dart';
import 'package:volunteer_manager/Widgets/informationTabListView.dart';
import 'package:volunteer_manager/Widgets/volunteerList.dart';
import "package:volunteer_manager/themes/theme.dart";

class FullScreenContent extends StatefulWidget {
  const FullScreenContent({Key? key}) : super(key: key);

  @override
  State<FullScreenContent> createState() => _FullScreenContentState();
}

class _FullScreenContentState extends State<FullScreenContent> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    //var openTabs = Provider.of<OpenTabsModel>(context).openTabs;

    return Container(
      color: secondaryColor,
      child: Row(
        children: [
          const Expanded(child: VolunteerListView(key: Key("VolunteerListView"))),
          const VerticalDivider(thickness: 5, color: tertiaryColor),
          //Expanded(child: InformationTab(title: "Test title", contents: Text("Lorem Ipsum", style: paragraph,),)),
          Expanded(child: InformationTabListView(openTabs: openTabs)),
        ]
      ),
    );

  }
}

// class FullScreenContent extends StatelessWidget {
//   const FullScreenContent({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: secondaryColor,
//       child: Row(children: [
//         const Expanded(child: VolunteerListView(key: Key("VolunteerListView"))),
//         const VerticalDivider(thickness: 5, color: tertiaryColor),
//         Expanded(child: Consumer<OpenTabsModel>(
//           builder: (context, openTabsModel, child) {
//             return InformationTabListView(openTabs: openTabsModel.openTabs);
//           },
//         )),
//       ]),
//     );
//   }
// }
