import 'package:flutter/material.dart';
import 'package:rep_manager/pages/import.dart';
import 'package:rep_manager/pages/repsPage.dart';
import "package:rep_manager/themes/theme.dart";
import "package:provider/provider.dart";

class FocusBox extends StatelessWidget {
  const FocusBox({Key? key, required this.focusRepIndex, required this.focusBoxHeight}) : super(key: key);

  final int focusRepIndex;
  final double focusBoxHeight;

  @override
  Widget build(BuildContext context) {
    List<Widget> staticInformation = [
      Text(
        Provider.of<DataNotifier>(context, listen: false).studentData[focusRepIndex].studentNumber,
        style: paragraph,
      ),
      Text(
        Provider.of<DataNotifier>(context, listen: false).studentData[focusRepIndex].email,
        style: paragraph,
      ),
      Text(
        Provider.of<DataNotifier>(context, listen: false).studentData[focusRepIndex].mode,
        style: paragraph,
      ),
      Text(
        Provider.of<DataNotifier>(context, listen: false).studentData[focusRepIndex].campus,
        style: paragraph,
      ),
      Text(
        Provider.of<DataNotifier>(context, listen: false).studentData[focusRepIndex].level,
        style: paragraph,
      ),
      Text(
        Provider.of<DataNotifier>(context, listen: false).studentData[focusRepIndex].startDate,
        style: paragraph,
      ),
      Text(
        Provider.of<DataNotifier>(context, listen: false).studentData[focusRepIndex].endDate,
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
      width: MediaQuery.sizeOf(context).width - 400,
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
                  Provider.of<FocusBoxNotifier>(context, listen: false).updateFocusSelected(false);
                },
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(children: [
            const SizedBox(width: 35),

            // Rep Information
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //const SizedBox(height: 35),
                Text(
                  '${Provider.of<DataNotifier>(context, listen: false).studentData[focusRepIndex].firstName} ${Provider.of<DataNotifier>(context, listen: false).studentData[focusRepIndex].lastName}',
                  style: h3,
                ),
                Text(
                  Provider.of<DataNotifier>(context, listen: false).studentData[focusRepIndex].course,
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
                        onPressed: () {},
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
            )
          ]),
        ],
      ),
    );
  }
}
