import 'package:flutter/material.dart';
import 'package:rep_manager/main.dart';
import "package:rep_manager/themes/theme.dart";
import 'package:provider/provider.dart';
import 'import.dart';
import 'repsPage.dart';

class analyticsPage extends StatefulWidget {
  const analyticsPage({Key? key}) : super(key: key);

  @override
  State<analyticsPage> createState() => _analyticsPageState();
}

int getNumberOfGroups(BuildContext context) {
  int count = 0;

  for (List<List<String>> groupOfFilters in Provider.of<DataNotifier>(context, listen: false).groups) {
    count += groupOfFilters[1].length;
  }

  return count;
}

List<String> getAllGroupNames(BuildContext context) {
  List<String> groupNames = [];
  
  for (List<List<String>> groupOfFilters in Provider.of<DataNotifier>(context, listen: false).groups) {
    groupNames.add(groupOfFilters[0][0]);
    groupNames.addAll(groupOfFilters[1]);
  }

  return groupNames;
}

class _analyticsPageState extends State<analyticsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final List<String> groupNames = getAllGroupNames(context);

    const double heightScale = 1;
    const double padding = 50;

    return ListView(
      padding: const EdgeInsets.all(padding),
      children: [
        Row(
          children: [
            Container(
              height: ((MediaQuery.sizeOf(context).height - ((3 * padding) + 50)) * 0.3) * heightScale,
              width: (MediaQuery.sizeOf(context).width - (4 * padding)) / 3,
              decoration: const BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(padding)),
              ),
              child: Center( child: Text("Lorem Ipsum\n600 Reps", style: h1, textAlign: TextAlign.center,))
            ),
            const SizedBox(width: padding,),
            Container(
              height: ((MediaQuery.sizeOf(context).height - ((3 * padding) + 50)) * 0.3) * heightScale,
              width: (MediaQuery.sizeOf(context).width - (4 * padding)) / 3,
              decoration: const BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(padding)),
              ),
              child: Center( child: Text("Lorem Ipsum\n600 Reps", style: h1, textAlign: TextAlign.center,))
            ),
            const SizedBox(width: padding,),
            Container(
              height: ((MediaQuery.sizeOf(context).height - ((3 * padding) + 50)) * 0.3) * heightScale,
              width: (MediaQuery.sizeOf(context).width - (4 * padding)) / 3,
              decoration: const BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(padding)),
              ),
              child: Center( child: Text("Lorem Ipsum\n600 Reps", style: h1, textAlign: TextAlign.center,))
            ),
          ]
        ),     
        const SizedBox(
          height: padding,
        ),
        Container(
          height: ((MediaQuery.sizeOf(context).height - ((3 * padding) + 50)) * 0.7) * heightScale,
          width: MediaQuery.sizeOf(context).width - 200,
          decoration: const BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.all(Radius.circular(padding)),
          ),
        ),
        const SizedBox(
          height: padding,
        ),
        Container(
          height: 200,
          width: MediaQuery.sizeOf(context).width - (2 * padding),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: groupNames.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  GestureDetector(
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: const BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      child: Center( child: Text(groupNames[index], style: h2, textAlign: TextAlign.center, softWrap: true,)),
                    ),
                    onTap: () {
                      Provider.of<FilterInfoNotifier>(context, listen: false).setFilter(groupNames[index]);
                      Provider.of<PageNotifier>(context, listen: false).setDisplay(const repPage());
                    },
                  ),
                  const SizedBox(width: padding,),
                ],
              );
            },
          ),
        ),
      ],
      
    );  
  }
}
