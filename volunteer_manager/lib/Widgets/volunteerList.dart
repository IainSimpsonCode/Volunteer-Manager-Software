import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volunteer_manager/Data/globals.dart';
import 'package:volunteer_manager/Widgets/informationTab.dart';
import 'package:volunteer_manager/themes/theme.dart';

class VolunteerListView extends StatefulWidget {
  const VolunteerListView({Key? key}) : super(key: key);

  @override
  State<VolunteerListView> createState() => _VolunteerListViewState();
}

class _VolunteerListViewState extends State<VolunteerListView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allVolunteers.length,
      itemBuilder:(context, index) {
        return ListTile(
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                    child: const Icon(Icons.copy, color: primaryColor),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: () {

                    },
                  ),
              const Padding(padding: EdgeInsets.all(5)),
              ElevatedButton(
                    child: const Icon(Icons.search, color: primaryColor),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: () {
                      //var openTabsModel = Provider.of<OpenTabsModel>(context, listen: false);
                      openTabs.add(InformationTab(title: allVolunteers[index].name, contents: Text("Lorem Ipsum", style: paragraph,)));
                    },
                  ),
            ],
          ),
          title: Text(allVolunteers[index].name, style: h3),
        );
      },
    );
  }
}