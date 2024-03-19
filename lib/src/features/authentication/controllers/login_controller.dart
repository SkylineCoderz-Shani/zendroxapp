// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// class ControllerLogin extends GetxController {
//   TextEditingController controllerEmail = TextEditingController();
//   TextEditingController controllerPassword = TextEditingController();
//   RxBool loginLoading = false.obs;
//   RxBool isCheck = false.obs;
//
//   Future<String> userLogin() async {
//     String response = "";
//     loginLoading.value=true;
//
//     String email = controllerEmail.text.trim();
//     String password = controllerPassword.text.trim();
//     if (email.isNotEmpty && password.isNotEmpty) {
//       await FirebaseAuth.instance
//           .signInWithEmailAndPassword(email: email, password: password)
//           .then((value) {
//         loginLoading.value=false;
//         response = "success";
//       }).catchError((error) {
//         loginLoading.value=false;
//         response = error.toString();
//       });
//     }
//
//     else {
//       loginLoading.value=false;
//       response = "Check your Email and Password";
//     }
//
//     return response;
//   }
// }