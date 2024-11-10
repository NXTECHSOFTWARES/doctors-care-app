import 'package:community_material_icon/community_material_icon.dart';
import 'package:doctors_care/Commons/custom_textfield.dart';
import 'package:doctors_care/Commons/reusable_text.dart';
import 'package:doctors_care/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MySignInPage extends StatefulWidget {
  const MySignInPage({super.key});

  @override
  State<MySignInPage> createState() => _MySignInPageState();
}

class _MySignInPageState extends State<MySignInPage> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                        Color.fromRGBO(3, 0, 46, 1.0),
                        Color.fromRGBO(212, 212, 212, 1.0),

                      ],
                      begin: Alignment.topCenter,
                        end: Alignment.center,
                        stops: [0.25, 1]
                      ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      Image.asset(
                        "assets/images/doctors_care_app_logo.png",
                        width: 150.w,
                        height: 63.4.h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h,),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.end,
                        spacing: 10.w,
                        children: const [
                          ReusableText(text: "welcome to", fontSize: 12, color: Colors.white, fontFamily: 'Domine', addShadow: false,),
                          ReusableText(text: "DOCTORS CARE", fontSize: 18, color: Colors.white, fontFamily: 'Domine', fontWeight: FontWeight.bold, addShadow: false,),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 80.h,),
                  const Wrap(
                    direction: Axis.vertical,
                    children: [
                      ReusableText(text: "SIGN IN", fontSize: 32, color: Colors.white, fontFamily: 'Domine', addShadow: true,),
                      ReusableText(text: "enter your credantials to proceed", fontSize: 10, color: Colors.white, fontFamily: 'Domine', addShadow: false,),
                    ],
                  ),
                  SizedBox(height: 80.h,),
                  const CustomTextField(hintText: 'email address', icon: Icons.email_rounded, ),
                  SizedBox(height: 20.h,),
                  const CustomTextField(hintText: 'password', icon: FontAwesomeIcons.key, ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
