// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_rx/get_rx.dart';
// import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
//
// class OnBoardingController extends GetxController{
//   final size = Get.size;
//   final controller = LiquidController();
//   RxInt currentPage = 0.obs;
//   onPageChangeCallback(int activePageindex) {
//     currentPage.value = activePageindex;
//     animatetoNextSlide;{
//       int nextPage = controller.currentPage + 1;
//       controller.animateToPage(page: nextPage);
//     }
//
//   }
//   animatetoNextSlide() {}
//
//   skip() {
//     controller.jumpToPage(page: 2);
//   }
// }