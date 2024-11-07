import 'package:doctors_care/Views/sign_in.dart';
import 'package:doctors_care/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppSplashScreen extends StatefulWidget {
  const AppSplashScreen({super.key});

  @override
  State<AppSplashScreen> createState() => _AppSplashScreenState();
}

class _AppSplashScreenState extends State<AppSplashScreen>
    with TickerProviderStateMixin {
  late AnimationController controllerGreen;
  late AnimationController controllerBlue;
  late AnimationController controllerWhite;

  @override
  void initState() {
    super.initState();

    controllerBlue =
        AnimationController(vsync: this, duration: const Duration(seconds: 4))
          ..addListener(() {
            setState(() {});
          });

    controllerGreen = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3500))
      ..addListener(() {
        setState(() {});
      });

    controllerWhite =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..addListener(() {
            setState(() {});
          });

    controllerBlue.repeat(reverse: false);
    controllerGreen.repeat(reverse: false);
    controllerWhite.repeat(reverse: true);

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 5), ()=> Get.off(const MySignInPage()));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(2, 0, 35, 1.0),
      body: Column(
        children: [
          SizedBox(
            height: 300.h,
          ),
          Container(
              margin: EdgeInsets.only(left: 65.4.h, right: 60.h),
              child: Image.asset(
                "assets/images/doctors_care_app_logo.png",
                fit: BoxFit.cover,
                width: 286.56.w,
                height: 131.h,
              )),
          SizedBox(
            height: 30.h,
          ),
          Text(
            "Doctors Care".toUpperCase(),
            style: TextStyle(
                color: Colors.white, fontFamily: 'Gloucester', fontSize: 28.sp),
          ),
          SizedBox(
            height: 220.h,
          ),
          /**
           * CUSTOM PROGRESS BAR
           */
          SizedBox(
            width: 320.w,
            height: 60.h,
            //padding: EdgeInsets.symmetric(horizontal: 46.0.h),
            child: Stack(
              children: [
                SizedBox(
                  width: 320.w,
                  height: 60.h,
                ),
                /**
                 * LinearProgress Indicators
                 */
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LinearProgressIndicator(
                      backgroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
                      minHeight: 1.h,
                      color: const Color.fromRGBO(17, 0, 255, 1.0),
                      value: controllerBlue.value,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    LinearProgressIndicator(
                      backgroundColor:
                          const Color.fromRGBO(0, 0, 0, 0.5019607843137255),
                      minHeight: 1.5.h,
                      color: const Color.fromRGBO(8, 255, 0, 1.0),
                      value: controllerGreen.value,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    LinearProgressIndicator(
                      backgroundColor:
                          const Color.fromRGBO(0, 0, 0, 0.5019607843137255),
                      minHeight: 2.h,
                      color: const Color.fromRGBO(255, 255, 255, 1.0),
                      value: controllerWhite.value,
                    ),
                  ],
                ),

                /**
                 * Doctors design
                 */
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 80.w,
                    height: 80.h,
                    color: const Color.fromRGBO(2, 0, 35, 1.0),
                    child: Center(
                      child: Container(
                        width: 60.w,
                        height: 60.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(17, 0, 255, 1.0),
                                Color.fromRGBO(255, 255, 255, 1.0),
                                //Color.fromRGBO(17, 0, 255, 1.0),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        child: Center(
                          child: Container(
                            width: 54.w,
                            height: 54.h,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(2, 0, 35, 1.0)),
                            child: Center(
                              child: Image.asset(
                                "assets/images/doctors_earphones.png",
                                width: 26.w,
                                height: 25.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ).animate(onPlay: (controller){
                      controller.repeat(reverse: true);

                    }).scaleXY(duration:  const Duration(milliseconds: 2000)).then().shake(duration: const Duration(seconds: 1)).blurXY(duration: Duration(milliseconds: 1000)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Text(
            "NXTECHSOFTWARES",
            style: TextStyle(
                fontFamily: 'Gloucester',
                fontSize: 12.sp,
                color: const Color.fromRGBO(128, 128, 128, 1.0)),
          )
        ],
      ),
    );
  }
}
