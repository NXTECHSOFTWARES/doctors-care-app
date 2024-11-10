import 'package:community_material_icon/community_material_icon.dart';
import 'package:doctors_care/Controller/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key, required this.hintText, required this.icon});

  final String hintText;
  final IconData icon;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  SignInController signInController = Get.put(SignInController());
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.hintText == "email address"
          ? signInController.emailController
          : signInController.passwordController,
      keyboardType: TextInputType.emailAddress,
      textAlign: TextAlign.center,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide(
              width: 3.0.w,
              color: const Color.fromRGBO(2, 0, 35, 1.0),
              style: BorderStyle.solid,
            ),
          ),
          enabled: true,
          suffixIcon: widget.hintText == "password"
              ? IconButton(
            padding: EdgeInsets.only(right: 20.w),
                  onPressed: () {
                    setState(() {
                      isHidden = !isHidden;
                    });
                  },
                  icon: Icon(
                    isHidden
                        ? CommunityMaterialIcons.eye_off
                        : CommunityMaterialIcons.eye,
                    size: 20.w,
                    color: const Color.fromRGBO(2, 0, 35, 1.0),
                  ))
              : null,
          prefixIcon: Container(
            margin: EdgeInsets.only(left: 10.w),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(2, 0, 35, 1.0),
              shape: BoxShape.circle,
            ),
            child: Icon(
              widget.icon,
              color: Colors.white,
              size: 18.w,
            ),
          ),
          hintText: widget.hintText,
          hintStyle: GoogleFonts.domine(
              color: const Color.fromRGBO(86, 86, 91, 1.0), fontSize: 10.sp)),
    );
  }
}
