import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rephub/theme.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * AppTheme.topBarWidth,
      height: MediaQuery.sizeOf(context).height * AppTheme.topBarHeight,
      child: SelectableText(
        //"This is a bold font\n" + MediaQuery.sizeOf(context).width.toString(),
        "Volunteer Manager Software\nUCLan Students' Union",
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.bold,
          fontSize: 36,
        ),
      ),
    );
  }
}
