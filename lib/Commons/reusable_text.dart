import 'package:doctors_care/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableText extends StatelessWidget {
  const ReusableText(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.color,
      this.fontWeight,
      required this.fontFamily, required this.addShadow});

  final String text;
  final double fontSize;
  final Color color;
  final FontWeight? fontWeight;
  final String fontFamily;
  final bool addShadow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.getFont(fontFamily,
          fontSize: fontSize.sp, fontWeight: fontWeight, color: color,
      shadows: [
        addShadow ? Shadow(color: const Color.fromRGBO(18, 19, 52, 1.0), offset: Offset(0.w, 3.h),  blurRadius: 6.r) : Shadow()
      ]),
    );
  }
}
