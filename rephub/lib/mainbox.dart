import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rephub/theme.dart';
import 'package:rephub/WebData.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:data_table_2/data_table_2.dart';

int selectedSchool = 0;
List<List<dynamic>> repList = [
  ["Reading Data..."]
];

class RepListView extends StatefulWidget {
  RepListView({Key? key, required this.schoolIndex}) : super(key: key);

  final int schoolIndex;

  @override
  RepListViewState createState() => RepListViewState();
}

// The main DataTable is here!
class RepListViewState extends State<RepListView> {
  void GetInfo() async {
    List<List<dynamic>> _RepList = await readFile();

    setState(() {
      repList = _RepList;
    });
  }

  @override
  void initState() {
    // Use GetInfo to retrieve CSV data and store it in a varaible outside of the widget
    // Data only needs to be retieved once on initialisation and then can be used like static data.
    // WARNING: if you move the GetInfo call, make sure its not being constantly called! For instance, the widget is rebuilt everytime you scroll meaning that this was being called everytime the user scrolled.
    GetInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return DataTable2(
      columnSpacing: 30,  // The spacing between columns of data
      lmRatio: 1.5,       // Unsure on use
      minWidth: 3000,     // Sets the width of the whole table. For some reason, the table does not expand past this minimum value but just sets the max width to this value

      // For each list of values in the list of lists (for each column in the CSV file): create a DataColumn2 for the column.
      // Sets the column headings to whatever the first values are
      columns: <DataColumn2>[
        for (String header in repList[0])
          DataColumn2(
            label: Text(header),
            size: ColumnSize.L
          ),
      ],

      // For each string within the lists within the lists of lists (for each data point in the CSV file): create a DataCell within a DataRow2 and then add the rows to the DataTable2
      rows: <DataRow2>[
        // For each row in the CSV
        for (int i = 1; i < repList.length; i++)
          // Create a new row
          DataRow2(
            cells: [
              // For each item within each row
              for (String cell in repList[i])
                // Populate the parent DataRow2 with data
                DataCell(
                  // Selectable text is used instead of TextBoxes as they are computationaly cheaper
                  // TODO: when a SelectableText is clicked, change it to a text field to be edited. That way each cell can be edited without having to store hundreds of textfields and controllers
                  SelectableText(
                    cell,
                    //style: const TextStyle(fontSize: 8),
                    maxLines: 1,
                  ),
                ),
            ],
          ),
      ],
    );
  }
}

// Box to house the excel style DataTable containing the volunteer information.
// Drawn from the leftmost point on the screen, can either expand halfway across the screen or the full width based on the isMainBoxExtended bool in theme.dart
// Contains a title card with the title "School", a container under the title housing a smaller orange container with the DataTable and 2 orange buttons which will have functionality added later
class VolunteerListViewMainBox extends StatelessWidget {
  const VolunteerListViewMainBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double localMainBoxWidth = 0.37;
    if (AppTheme.isMainBoxExtended) {
      localMainBoxWidth = 0.74;
    } else {
      localMainBoxWidth = 0.37;
    }

    return Column(
      children: [
        // Title area
        MainBoxTitleCard(title: "School", width: localMainBoxWidth),

        //Main Info Box
        Row(
          children: [

            // Padding
            SizedBox(
              width: MediaQuery.sizeOf(context).width *
                  AppTheme.sideBarSpacersWidth,
            ),

            Column(
              children: [

                // Orange box containing the main DataTable as a child
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * localMainBoxWidth - (2 * (MediaQuery.sizeOf(context).width * AppTheme.sideBarSpacersWidth)),
                  height: MediaQuery.sizeOf(context).height * (AppTheme.mainBoxHeight - (AppTheme.mainBoxTitleHeight * 1.5)),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: AppTheme.accentColor,
                        border: Border.all(color: AppTheme.accentColor),
                        borderRadius: const BorderRadius.all(Radius.circular(20))),
                    child: RepListView(schoolIndex: selectedSchool),
                  ),
                ),

                // Padding
                SizedBox(
                  height: MediaQuery.sizeOf(context).height *
                      (AppTheme.mainBoxTitleHeight / 4),
                ),

                // Buttons
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * localMainBoxWidth -
                      (2 *
                          (MediaQuery.sizeOf(context).width *
                              AppTheme.sideBarSpacersWidth)),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: AppTheme.accentColor,
                            border: Border.all(
                              color: AppTheme.accentColor,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        width: (MediaQuery.sizeOf(context).width *
                                    localMainBoxWidth -
                                (2 *
                                    (MediaQuery.sizeOf(context).width *
                                        AppTheme.sideBarSpacersWidth))) *
                            0.4875,
                        child: Center(
                          child: Text(
                            "Create Report",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: AppTheme.accentColor,
                            border: Border.all(
                              color: AppTheme.accentColor,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        width: (MediaQuery.sizeOf(context).width *
                                    localMainBoxWidth -
                                (2 *
                                    (MediaQuery.sizeOf(context).width *
                                        AppTheme.sideBarSpacersWidth))) *
                            0.4875,
                        child: Center(
                          child: Text(
                            "Create Report",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width *
                  AppTheme.sideBarSpacersWidth,
              height:
                  MediaQuery.sizeOf(context).height * AppTheme.mainBoxHeight,
            ),
          ],
        ),
      ],
    );
  }
}

class DataAnalysisMainBox extends StatelessWidget {
  const DataAnalysisMainBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainBoxTitleCard(title: "Trained Reps", width: AppTheme.mainBoxWidth),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * AppTheme.mainBoxWidth,
          height: MediaQuery.sizeOf(context).height * AppTheme.mainBoxHeight,
          child: CircularPercentIndicator(
            radius: (MediaQuery.sizeOf(context).width * 0.3) / 2,
            lineWidth: MediaQuery.sizeOf(context).width * 0.05,
            percent: 0.75,
            center: Text(
              "75%",
              style: GoogleFonts.poppins(),
            ),
            progressColor: AppTheme.accentColor,
          ),
        ),
      ],
    );
  }
}

class MainBoxTitleCard extends StatelessWidget {
  const MainBoxTitleCard({Key? key, required this.title, required this.width})
      : super(key: key);

  final String title;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * width,
      height: MediaQuery.sizeOf(context).height * AppTheme.mainBoxTitleHeight,
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
