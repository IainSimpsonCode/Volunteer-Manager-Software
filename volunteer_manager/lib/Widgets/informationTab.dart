import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volunteer_manager/Data/globals.dart';
import 'package:volunteer_manager/Widgets/informationTabListView.dart';
import "package:volunteer_manager/themes/theme.dart";

class InformationTab extends StatefulWidget {
  InformationTab({Key? key, required this.title, required this.contents}) : super(key: key);

  String title;
  Widget contents;

  @override
  State<InformationTab> createState() => _InformationTabState();
}

class _InformationTabState extends State<InformationTab> {
    
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Header
              Container(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                height: 20,
                color: tertiaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                      ),
                    ), 
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                      ),
                    ), 
                    GestureDetector(
                      onTap: () {
                        //var openTabsModel = Provider.of<OpenTabsModel>(context, listen: false);
                        openTabs.remove(widget);
                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                      ),
                    ),                   
                  ],
                ),
              ),

              //Content
              Container(
                padding: const EdgeInsets.all(5),
                height: 200,
                color: secondaryColor,
                child: Text(widget.title,
                    style: h3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
