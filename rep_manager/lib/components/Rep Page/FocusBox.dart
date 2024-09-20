import 'package:flutter/material.dart';
import 'package:rep_manager/pages/import.dart';
import 'package:rep_manager/pages/repsPage.dart';
import "package:rep_manager/themes/theme.dart";
import "package:provider/provider.dart";
import "package:url_launcher/url_launcher.dart";

String encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((e) =>
          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value).replaceAll('+', '%20')}')
      .join('&');
}

Container focusBoxRolesInformation(List<Widget> allRoles, double focusBoxWidth) {
  if ((focusBoxWidth + sideBarWidth) < reducedScreenSize) {
    return Container();
  }
  else {
    return Container(
      width: focusBoxWidth / 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              Text(
                "Roles:",
                style: h2,
              ),
              SizedBox(
                width: focusBoxWidth / 3,
                child: Column(children: allRoles),
              ),
            ],
          ),
          const SizedBox(width: 35),
        ],
      ),
    );
  }
}

class FocusBox extends StatelessWidget {
  const FocusBox(
      {Key? key, required this.focusRepIndex, required this.focusBoxHeight})
      : super(key: key);

  final int focusRepIndex;
  final double focusBoxHeight;

  @override
  Widget build(BuildContext context) {
    double focusBoxWidth = MediaQuery.sizeOf(context).width - 400;

    List<Widget> allRoles = [];
    for (String role in Provider.of<DataNotifier>(context, listen: false)
        .studentData[focusRepIndex]
        .labels) {
      allRoles.add(Text(
        role,
        style: paragraph,
        softWrap: true,
        textAlign: TextAlign.center,
      ));
    }

    List<Widget> staticInformation = [
      Text(
        Provider.of<DataNotifier>(context, listen: false)
            .studentData[focusRepIndex]
            .studentNumber,
        style: paragraph,
      ),
      Text(
        Provider.of<DataNotifier>(context, listen: false)
            .studentData[focusRepIndex]
            .email,
        style: paragraph,
      ),
      Text(
        Provider.of<DataNotifier>(context, listen: false)
            .studentData[focusRepIndex]
            .mode,
        style: paragraph,
      ),
      Text(
        Provider.of<DataNotifier>(context, listen: false)
            .studentData[focusRepIndex]
            .campus,
        style: paragraph,
      ),
      Text(
        Provider.of<DataNotifier>(context, listen: false)
            .studentData[focusRepIndex]
            .level,
        style: paragraph,
      ),
      Text(
        Provider.of<DataNotifier>(context, listen: false)
            .studentData[focusRepIndex]
            .startDate,
        style: paragraph,
      ),
      Text(
        Provider.of<DataNotifier>(context, listen: false)
            .studentData[focusRepIndex]
            .endDate,
        style: paragraph,
      ),
    ];
    /*
    List<Widget> editableInformation = [
      TextField(
        controller: TextEditingController()..text = 'G21002528',
        onChanged: (text) => {},
      ),
      TextField(
        controller: TextEditingController()..text = 'isimpson3@uclan.ac.uk',
        onChanged: (text) => {},
      ),
      TextField(
        controller: TextEditingController()..text = 'FT',
        onChanged: (text) => {},
      ),
      TextField(
        controller: TextEditingController()..text = 'Preston',
        onChanged: (text) => {},
      ),
      TextField(
        controller: TextEditingController()..text = 'UG',
        onChanged: (text) => {},
      ),
      TextField(
        controller: TextEditingController()..text = '1/7/24',
        onChanged: (text) => {},
      ),
      TextField(
        controller: TextEditingController()..text = '1/7/25',
        onChanged: (text) => {},
      ),
    ];
    */

    List<Widget> focusBoxInformation = staticInformation;
    // if (widget.focusEdit) {
    //   focusBoxInformation = editableInformation;
    // }

    return Container(
      height: focusBoxHeight,
      width: focusBoxWidth,
      decoration: const BoxDecoration(
        color: bodyColor,
        border: Border(
          top: BorderSide(width: 1, color: Colors.black),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                child: const Icon(
                  Icons.close,
                  size: 15,
                ),
                onTap: () {
                  // Close the focus box
                  Provider.of<FocusBoxNotifier>(context, listen: false)
                      .updateFocusSelected(false);
                },
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(children: [
            Container(
              width: focusBoxWidth / 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 35),

                  // Rep Information
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${Provider.of<DataNotifier>(context, listen: false).studentData[focusRepIndex].firstName} ${Provider.of<DataNotifier>(context, listen: false).studentData[focusRepIndex].lastName}',
                        style: h3,
                      ),
                      Text(
                        Provider.of<DataNotifier>(context, listen: false)
                            .studentData[focusRepIndex]
                            .course,
                        style: paragraph,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "G Number:",
                                style: paragraph,
                              ),
                              Text(
                                "Email:",
                                style: paragraph,
                              ),
                              Text(
                                "Mode:",
                                style: paragraph,
                              ),
                              Text(
                                "Campus:",
                                style: paragraph,
                              ),
                              Text(
                                "Level:",
                                style: paragraph,
                              ),
                              Text(
                                "Start Date:",
                                style: paragraph,
                              ),
                              Text(
                                "End Date:",
                                style: paragraph,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: focusBoxInformation),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              onPressed: () async {
                                final Uri emailLaunchUri = Uri(
                                  scheme: 'mailto',
                                  path: Provider.of<DataNotifier>(context,
                                          listen: false)
                                      .studentData[focusRepIndex]
                                      .email,
                                  query:
                                      encodeQueryParameters(<String, String>{}),
                                );

                                if (await canLaunchUrl(emailLaunchUri)) {
                                  await launchUrl(emailLaunchUri);
                                }
                              },
                              child: const Row(children: [
                                Icon(Icons.email),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Email")
                              ])),
                          const SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              onPressed: () {},
                              child: const Row(children: [
                                Icon(Icons.delete),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Delete")
                              ]))
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            focusBoxRolesInformation(allRoles, focusBoxWidth),
          ]),
        ],
      ),
    );
  }
}
