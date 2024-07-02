import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rephub/theme.dart';
import 'package:rephub/WebData.dart';
import 'package:flutter/services.dart';

class SideBarCard extends StatelessWidget {
  const SideBarCard({Key? key, required this.schoolIndex}) : super(key: key);

  final int schoolIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await Clipboard.setData(ClipboardData(text: schools[schoolIndex]));
        // copied successfully
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: AppTheme.accentColor,
            border: Border.all(
              color: AppTheme.accentColor,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        width: MediaQuery.sizeOf(context).width * AppTheme.sideBarScrollerWidth,
        height:
            MediaQuery.sizeOf(context).width * AppTheme.sideBarScrollerWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              schools[schoolIndex],
              style: GoogleFonts.poppins(
                fontSize: MediaQuery.sizeOf(context).width / 50,
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
                fontSize: MediaQuery.sizeOf(context).width / 100,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Trained Reps - " + trainedReps[schoolIndex].toString(),
              style: GoogleFonts.poppins(
                fontSize: MediaQuery.sizeOf(context).width / 100,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SideBarScroller extends StatelessWidget {
  const SideBarScroller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> scrollerChildren = [
      SizedBox(
        width: MediaQuery.sizeOf(context).width * AppTheme.sideBarWidth,
        height: MediaQuery.sizeOf(context).height * AppTheme.mainBoxTitleHeight,
        child: Center(
          child: Text(
            "Your Teams",
            style: GoogleFonts.poppins(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
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

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width *
                  AppTheme.sideBarSpacersWidth,
              height: MediaQuery.sizeOf(context).height,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width *
                  AppTheme.sideBarScrollerWidth,
              height: MediaQuery.sizeOf(context).height,
              child: const SideBarScroller(),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width *
                  AppTheme.sideBarSpacersWidth,
              height: MediaQuery.sizeOf(context).height,
            ),
          ],
        ),
      ],
    );
  }
}
