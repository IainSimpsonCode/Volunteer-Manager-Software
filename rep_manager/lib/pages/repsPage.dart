import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rep_manager/components/Rep%20Page/FocusBox.dart';
import 'package:rep_manager/pages/import.dart';
import "package:rep_manager/themes/theme.dart";

class FocusBoxNotifier extends ChangeNotifier {
  int _focusedIndex = 0;
  bool _focusEdit = false;
  bool _focusSelected = false;

  int get focusedIndex => _focusedIndex;
  bool get focusEdit => _focusEdit;
  bool get focusSelected => _focusSelected;

  void updateFocusedIndex(int newValue) {
    _focusedIndex = newValue;
    notifyListeners();
  }

  void updateFocusEdit(bool newValue) {
    _focusEdit = newValue;
    notifyListeners();
  }

  void updateFocusSelected(bool newValue) {
    _focusSelected = newValue;
    notifyListeners();
  }
}

//ignore: must_be_immutable
class repPage extends StatefulWidget {
  repPage({Key? key}) : super(key: key);

  List<int> selectedIndexes = [];

  List<String> filters = [];
  List<Student> filteredListOfStudents = [];

  //int focusedIndex = 0;
  //bool focusEdit = false;

  //bool? checkedValue = false;

  @override
  State<repPage> createState() => _repPageState();
}

class _repPageState extends State<repPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Provider.of<DataNotifier>(context, listen: false).addListener(_onNotifierChange);
  }

  @override
  void dispose() {
    Provider.of<DataNotifier>(context, listen: false).removeListener(_onNotifierChange);
    super.dispose();
  }

  void _onNotifierChange() {
    // Call setState to rebuild the widget when notifier changes
    setState(() {
      print("Resetting Rep Page");

      widget.filters.clear();
      widget.filteredListOfStudents.clear();
      widget.selectedIndexes.clear();

      Provider.of<FocusBoxNotifier>(context, listen: false).updateFocusSelected(false);
      Provider.of<FocusBoxNotifier>(context, listen: false).updateFocusedIndex(0);
      Provider.of<FocusBoxNotifier>(context, listen: false).updateFocusEdit(false);
    });
  }

  @override
  Widget build(BuildContext context) {

    Icon addNewRepIcon = const Icon(Icons.add, color: textColor,);
    Icon editRepDetailsIcon = const Icon(Icons.edit, color: textColor,);
    Icon addRepToGroupIcon = const Icon(Icons.drive_file_move);
    Icon downloadRepInformationIcon = const Icon(Icons.download);
    Icon deleteRepIcon = const Icon(Icons.delete);

    if (widget.filters.isEmpty) {
      widget.filteredListOfStudents = List.from(Provider.of<DataNotifier>(context, listen: false).studentData);
    }

    List<Widget> filterCheckboxes = [const SizedBox(height: 10,)];
    for (List<List<String>> group in Provider.of<DataNotifier>(context, listen: false).groups) {
      filterCheckboxes.add(Row(
        children: [
          const SizedBox(width: 20,),
          Text(group[0][0], style: h3,),
        ],
      ));
      for (String filterItem in group[1]) {
        bool startValue = false;
        if (widget.filters.contains(filterItem)) {
          startValue = true;
        }

        filterCheckboxes.add(CheckboxListTile(
          dense: true,
          title: Text(
            filterItem,
            style: paragraph,
          ),
          value: startValue,
          onChanged: (newValue) {
            setState(() {
              if (widget.filters.contains(filterItem)) {
                widget.filters.remove(filterItem);
              } else {
                widget.filters.add(filterItem);
              }
            
              widget.filteredListOfStudents.clear();

              if (widget.filters.isEmpty) {
                widget.filteredListOfStudents = List.from(Provider.of<DataNotifier>(context, listen: false).studentData);
              }
              else {
                for (Student student in Provider.of<DataNotifier>(context, listen: false).studentData) {
                  for (String label in student.labels) {
                    if (widget.filters.contains(label)) {
                      widget.filteredListOfStudents.add(student);
                    }
                  }
                }
              }
            });
          },
          controlAffinity:
              ListTileControlAffinity.leading, //  <-- leading Checkbox
        ));               
      }
    }

    if (widget.selectedIndexes.length > 1) {
      editRepDetailsIcon = const Icon(
        Icons.edit,
        color: Color.fromARGB(100, 0, 0, 0),
      );
    }
    else {
      editRepDetailsIcon = const Icon(
        Icons.edit,
        color: textColor,
      );
    }

    double focusBoxHeight = 0;
    Widget focusBox = Container(height: 0);

    if (Provider.of<FocusBoxNotifier>(context).focusSelected) {
      focusBoxHeight = 350;
      focusBox = FocusBox(focusRepIndex: Provider.of<FocusBoxNotifier>(context, listen: false).focusedIndex, focusBoxHeight: focusBoxHeight);
    }

    String selectAllText = "Select All";
    Icon selectAllIcon = Icon(Icons.circle_outlined);
    if (widget.selectedIndexes.isNotEmpty) {
      selectAllText = "${widget.selectedIndexes.length} Selected";
      selectAllIcon = const Icon(Icons.circle, color: primaryColor,);
    }

    return Row(children: [
      //Side Bar
      Container(
        width: 400,
        height: MediaQuery.sizeOf(context).height - 50,
        decoration: BoxDecoration(
          color: secondaryColor,
          border: Border.all(color: Colors.black, width: 2),
        ),
        child: ListView(children: filterCheckboxes)
      ),

      //Content
      Column( children: [
        Container(
          width: MediaQuery.sizeOf(context).width - 400,
          height: 50,
          color: secondaryColor,
          child: Row(
            children: [
              const Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
              GestureDetector(
                child: addNewRepIcon,
                onTap: () {

                },
              ),
              const Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
              GestureDetector(
                  child: editRepDetailsIcon,
                  onTap: () {
                    if (widget.selectedIndexes.length > 1)
                    {
                      // Do nothing if more than 1 person is selected
                    }
                    else {
                      setState(() {
                        Provider.of<FocusBoxNotifier>(context, listen: false).updateFocusEdit(!Provider.of<FocusBoxNotifier>(context, listen: false).focusEdit);
                      });
                    }
                  },
                ),
              const Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
              GestureDetector(
                  child: addRepToGroupIcon,
                  onTap: () {},
                ),
              const Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
              GestureDetector(
                  child: downloadRepInformationIcon,
                  onTap: () {},
                ),
              const Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
              GestureDetector(
                  child: deleteRepIcon,
                  onTap: () {},
                ),
              const Expanded(child: SizedBox()),
              GestureDetector(
                child: selectAllIcon,
                onTap: () {
                  if (widget.selectedIndexes.isEmpty) {
                    setState(() {
                      for (int i = 0; i < widget.filteredListOfStudents.length; i++) {
                        widget.selectedIndexes.add(Provider.of<DataNotifier>(context, listen: false).studentData.indexOf(widget.filteredListOfStudents[i]));

                        //selectedIndexes.add(i);
                      }
                    });
                  }
                  else {
                    setState(() {
                      widget.selectedIndexes.clear();
                    });
                  }
                },
              ),
              const Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0)),
              SizedBox(width: 120, child: Text(selectAllText, style: paragraph,)),
              const Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
            ]
          ),
        ),
        Container(
          width: MediaQuery.sizeOf(context).width - 400,
          height: 50,
          child: Row(children: [
            const SizedBox(width: 53,),
            Text("Name", style: paragraph,),
            const Expanded(child: SizedBox()),
            Text("Course", style: paragraph,),
            const SizedBox(width: 7,),
            const Divider(height: 1, thickness: 10, indent: 0, color: Colors.black,),
            const SizedBox(width: 8,),
            SizedBox(
              width: 40,
              child: Text("Year", style: paragraph,),
            ),
            const SizedBox(width: 30,),
          ]),
        ),
        Container(
          width: MediaQuery.sizeOf(context).width - 400,
          height: MediaQuery.sizeOf(context).height - (150 + focusBoxHeight),
          child: ListView.builder(
            itemCount: widget.filteredListOfStudents.length,
            itemBuilder: (BuildContext context, int index) {

              Icon circleIcon = const Icon(Icons.circle_outlined, color: textColor,);
              if (widget.selectedIndexes.contains(Provider.of<DataNotifier>(context, listen: false).studentData.indexOf(widget.filteredListOfStudents[index]))) { circleIcon = Icon(Icons.circle, color: primaryColor,); }

              return ListTile(
                leading: GestureDetector(
                  child: circleIcon,
                  onTap: () {
                    if (widget.selectedIndexes.contains(Provider.of<DataNotifier>(context, listen: false).studentData.indexOf(widget.filteredListOfStudents[index]))) {
                      setState(() {
                        widget.selectedIndexes.remove(Provider.of<DataNotifier>(context, listen: false).studentData.indexOf(widget.filteredListOfStudents[index]));
                      });
                    } else {
                      setState(() {
                        widget.selectedIndexes.add(Provider.of<DataNotifier>(context, listen: false).studentData.indexOf(widget.filteredListOfStudents[index]));
                      });
                    }
                  },
                ),
                title: Text('${widget.filteredListOfStudents[index].firstName} ${widget.filteredListOfStudents[index].lastName}', style: paragraph, maxLines: 2, softWrap: false,),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.filteredListOfStudents[index].course,
                      style: paragraph,
                      maxLines: 2,
                      softWrap: true, 
                    ),
                    const SizedBox(width: 20),
                    SizedBox(
                      width: 40,
                      height: 20,
                      child: Text(
                        widget.filteredListOfStudents[index].year,
                        style: paragraph,
                      ),
                    )
                  ],
                ),
                shape: ContinuousRectangleBorder(
                  side: const BorderSide(color: secondaryColor, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ), 
                onTap: () {
                  setState(() {
                    Provider.of<FocusBoxNotifier>(context, listen: false).updateFocusSelected(true);
                    Provider.of<FocusBoxNotifier>(context, listen: false).updateFocusedIndex(Provider.of<DataNotifier>(context, listen: false).studentData.indexOf(widget.filteredListOfStudents[index]));
                  });
                },                
              );
            },
          )
        ),
        focusBox,
      ],)
    ],);
  }
}
