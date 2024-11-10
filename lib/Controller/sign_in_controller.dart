import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignInController extends GetxController{
  final TextEditingController emailController =  TextEditingController();
  final TextEditingController passwordController =  TextEditingController();

  RxString emailAddress = ''.obs;
  RxString password = ''.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    emailController.addListener(() {
      emailAddress.value = emailController.text;
    });

    passwordController.addListener((){
      password.value = passwordController.text;
    });
  }

}