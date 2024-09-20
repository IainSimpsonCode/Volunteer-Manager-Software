import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rep_manager/pages/import.dart';
import 'package:rep_manager/pages/loadingPage.dart';
import 'package:rep_manager/themes/theme.dart';

class infoDisplayBox extends StatefulWidget {
  const infoDisplayBox({Key? key}) : super(key: key);

  @override
  State<infoDisplayBox> createState() => _infoDisplayBoxState();
}

class _infoDisplayBoxState extends State<infoDisplayBox> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // For each set of conflicting records
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height - 50,
      child: ListView.builder(
        itemCount: Provider.of<ConflictingInformationNotifier>(context, listen: false).conflictingRecords.length,
        itemBuilder: ((context, set) {
          return Container(
            height: 300,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.black),
                bottom: BorderSide(color: Colors.black),
              )
            ),
            // For each record in the set of conflicting records
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Provider.of<ConflictingInformationNotifier>(context, listen: false).conflictingRecords[set].length,
              itemBuilder: ((context, record) {
                // Rep Information 
                return Column(
                  children: [                      
                    Text(
                      '${Provider.of<ConflictingInformationNotifier>(context, listen: false).conflictingRecords[set][record].firstName} ${Provider.of<ConflictingInformationNotifier>(context, listen: false).conflictingRecords[set][record].lastName}',
                      style: h3,
                    ),
                    Text(
                      Provider.of<ConflictingInformationNotifier>(context, listen: false).conflictingRecords[set][record].course,
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
                          children: [
                            Text(
                              Provider.of<ConflictingInformationNotifier>(context, listen: false).conflictingRecords[set][record].studentNumber,
                              style: paragraph,
                            ),
                            Text(
                              Provider.of<ConflictingInformationNotifier>(context, listen: false).conflictingRecords[set][record].email,
                              style: paragraph,
                            ),
                            Text(
                              Provider.of<ConflictingInformationNotifier>(context, listen: false).conflictingRecords[set][record].mode,
                              style: paragraph,
                            ),
                            Text(
                              Provider.of<ConflictingInformationNotifier>(context, listen: false).conflictingRecords[set][record].campus,
                              style: paragraph,
                            ),
                            Text(
                              Provider.of<ConflictingInformationNotifier>(context, listen: false).conflictingRecords[set][record].level,
                              style: paragraph,
                            ),
                            Text(
                              Provider.of<ConflictingInformationNotifier>(context, listen: false).conflictingRecords[set][record].startDate,
                              style: paragraph,
                            ),
                            Text(
                              Provider.of<ConflictingInformationNotifier>(context, listen: false).conflictingRecords[set][record].endDate,
                              style: paragraph,
                            ),
                          ]
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      child: const Text(
                        "This is the most up to date record",
                      ),
                      onPressed: () {}
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                );
              })
            )
          );      
        }
      )),
    );
    // return Column(
    //   children: [
    //     const SizedBox(height: 35,),
    //     Text("Conflicting Information", style: h1,),
    //     Text("The following 2 students have the same student number, but their details dont match. \nPlease select which information is correct.", style: paragraph, textAlign: TextAlign.center,),
    //     const SizedBox(height: 15,),

        
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [   
              
          
    //           const SizedBox(width: 100,),
          
    //           // Rep Information
    //           Column(
    //             children: [                      
    //               Text(
    //                 '${Provider.of<DataNotifier>(context, listen: false).studentData[widget.studentIndex2].firstName} ${Provider.of<DataNotifier>(context, listen: false).studentData[widget.studentIndex2].lastName}',
    //                 style: h3,
    //               ),
    //               Text(
    //                 Provider.of<DataNotifier>(context, listen: false).studentData[widget.studentIndex2].course,
    //                 style: paragraph,
    //               ),
    //               const SizedBox(height: 20),
    //               Row(
    //                 children: [
    //                   Column(
    //                     crossAxisAlignment: CrossAxisAlignment.end,
    //                     children: [
    //                       Text(
    //                         "G Number:",
    //                         style: paragraph,
    //                       ),
    //                       Text(
    //                         "Email:",
    //                         style: paragraph,
    //                       ),
    //                       Text(
    //                         "Mode:",
    //                         style: paragraph,
    //                       ),
    //                       Text(
    //                         "Campus:",
    //                         style: paragraph,
    //                       ),
    //                       Text(
    //                         "Level:",
    //                         style: paragraph,
    //                       ),
    //                       Text(
    //                         "Start Date:",
    //                         style: paragraph,
    //                       ),
    //                       Text(
    //                         "End Date:",
    //                         style: paragraph,
    //                       ),
    //                     ],
    //                   ),
    //                   const SizedBox(
    //                     width: 10,
    //                   ),
    //                   Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       Text(
    //                         Provider.of<DataNotifier>(context, listen: false).studentData[widget.studentIndex2].studentNumber,
    //                         style: paragraph,
    //                       ),
    //                       Text(
    //                         Provider.of<DataNotifier>(context, listen: false).studentData[widget.studentIndex2].email,
    //                         style: paragraph,
    //                       ),
    //                       Text(
    //                         Provider.of<DataNotifier>(context, listen: false).studentData[widget.studentIndex2].mode,
    //                         style: paragraph,
    //                       ),
    //                       Text(
    //                         Provider.of<DataNotifier>(context, listen: false).studentData[widget.studentIndex2].campus,
    //                         style: paragraph,
    //                       ),
    //                       Text(
    //                         Provider.of<DataNotifier>(context, listen: false).studentData[widget.studentIndex2].level,
    //                         style: paragraph,
    //                       ),
    //                       Text(
    //                         Provider.of<DataNotifier>(context, listen: false).studentData[widget.studentIndex2].startDate,
    //                         style: paragraph,
    //                       ),
    //                       Text(
    //                         Provider.of<DataNotifier>(context, listen: false).studentData[widget.studentIndex2].endDate,
    //                         style: paragraph,
    //                       ),
    //                     ]
    //                   ),                            
    //                 ],
    //               ),
    //               const SizedBox(height: 10,),
    //               ElevatedButton(
    //                 style: ElevatedButton.styleFrom(
    //                   foregroundColor: Colors.white,
    //                   backgroundColor: Colors.black,
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(5.0),
    //                   ),
    //                 ),
    //                 child: const Text("This is the most up to date record",),
    //                 onPressed: () {

    //                 }
    //               ),
    //               const SizedBox(height: 10,),
    //             ],
    //           ),
    //         ],
    //       ),
    //     ),

    //     SizedBox(height: 15,),
    //     Text("You can either: \nSelect which option has the correct information,\nor, edit the student number on one of the options", style: paragraph, textAlign: TextAlign.center,),
    //   ],
    // );
        

  }
}
