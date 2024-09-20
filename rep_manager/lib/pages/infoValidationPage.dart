import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rep_manager/components/infoValidationPage/infoDisplayBox.dart';
import 'package:rep_manager/pages/import.dart';
import 'package:rep_manager/pages/loadingPage.dart';

class infoValidationPage extends StatefulWidget {
  const infoValidationPage({Key? key}) : super(key: key);

  @override
  State<infoValidationPage> createState() => _infoValidationPageState();
}

class _infoValidationPageState extends State<infoValidationPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<ConflictingInformationNotifier>(context, listen: false).addRecord(
      Provider.of<DataNotifier>(context, listen: false).studentData[0], 
      Provider.of<DataNotifier>(context, listen: false).studentData[1]);
    Provider.of<ConflictingInformationNotifier>(context, listen: false).addRecord(
      Provider.of<DataNotifier>(context, listen: false).studentData[2],
      Provider.of<DataNotifier>(context, listen: false).studentData[3]);
    Provider.of<ConflictingInformationNotifier>(context, listen: false).addRecord(
      Provider.of<DataNotifier>(context, listen: false).studentData[4],
      Provider.of<DataNotifier>(context, listen: false).studentData[5]);
    Provider.of<ConflictingInformationNotifier>(context, listen: false).addRecord(
      Provider.of<DataNotifier>(context, listen: false).studentData[6],
      Provider.of<DataNotifier>(context, listen: false).studentData[7]);
    Provider.of<ConflictingInformationNotifier>(context, listen: false).addRecord(
      Provider.of<DataNotifier>(context, listen: false).studentData[8],
      Provider.of<DataNotifier>(context, listen: false).studentData[9]);
    return const infoDisplayBox();
  }
}