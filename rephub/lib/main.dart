import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:rephub/sidebarcards.dart';
import 'theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Row(
        children: [
          Column(
            children: [
              Container(
                color: AppTheme.topBarColor,
                width: MediaQuery.sizeOf(context).width * AppTheme.topBarWidth,
                height:
                    MediaQuery.sizeOf(context).height * AppTheme.topBarHeight,
                child: Text(
                  "This is a bold font\n" +
                      MediaQuery.sizeOf(context).width.toString(),
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                          width: MediaQuery.sizeOf(context).width *
                              AppTheme.mainBoxWidth,
                          height: MediaQuery.sizeOf(context).height *
                              AppTheme.mainBoxTitleHeight,
                          color: AppTheme.primaryColor,
                          child: Center(
                            child: Text(
                              "School",
                              style: GoogleFonts.poppins(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )),
                      Container(
                        width: MediaQuery.sizeOf(context).width *
                            AppTheme.mainBoxWidth,
                        height: MediaQuery.sizeOf(context).height *
                            AppTheme.mainBoxHeight,
                        color: AppTheme.primaryColor,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          width: MediaQuery.sizeOf(context).width *
                              AppTheme.mainBoxWidth,
                          height: MediaQuery.sizeOf(context).height *
                              AppTheme.mainBoxTitleHeight,
                          color: AppTheme.secondaryColor,
                          child: Center(
                            child: Text(
                              "Trained Reps",
                              style: GoogleFonts.poppins(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )),
                      Container(
                        width: MediaQuery.sizeOf(context).width *
                            AppTheme.mainBoxWidth,
                        height: MediaQuery.sizeOf(context).height *
                            AppTheme.mainBoxHeight,
                        color: AppTheme.secondaryColor,
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
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                  width: MediaQuery.sizeOf(context).width *
                      AppTheme.sideBarSpacersWidth,
                  height: MediaQuery.sizeOf(context).height,
                  color: AppTheme.sideBarColor),
              Container(
                width: MediaQuery.sizeOf(context).width *
                    AppTheme.sideBarScrollerWidth,
                height: MediaQuery.sizeOf(context).height,
                color: AppTheme.sideBarColor,
                child: const SideBarScroller(),
              ),
              Container(
                  width: MediaQuery.sizeOf(context).width *
                      AppTheme.sideBarSpacersWidth,
                  height: MediaQuery.sizeOf(context).height,
                  color: AppTheme.sideBarColor),
            ],
          ),
        ],
      )),
    );
  }
}
