import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rephub/theme.dart';
import 'package:rephub/WebData.dart';

class SideBarCard extends StatelessWidget {
  const SideBarCard({Key? key, required this.schoolIndex}) : super(key: key);

  final int schoolIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppTheme.accentColor,
          border: Border.all(
            color: AppTheme.accentColor,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      width: MediaQuery.sizeOf(context).width * 0.2,
      height: MediaQuery.sizeOf(context).width * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            schools[schoolIndex],
            style: GoogleFonts.poppins(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          Divider(
            color: AppTheme.sideBarColor,
            thickness: 2,
          ),
          Text(
            "Total Reps - " + reps[schoolIndex].toString(),
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Trained Reps - " + trainedReps[schoolIndex].toString(),
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class SideBarScroller extends StatelessWidget {
  const SideBarScroller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> scrollerChildren = [
      const Padding(padding: EdgeInsets.all(10))
    ];

    for (int i = 0; i < schools.length; i++) {
      scrollerChildren.add(SideBarCard(schoolIndex: i));
      scrollerChildren.add(const Padding(padding: EdgeInsets.all(10)));
    }

    return ListView(
      children: scrollerChildren,
    );
  }
}
