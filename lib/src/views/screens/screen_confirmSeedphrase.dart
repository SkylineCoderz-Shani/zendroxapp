import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zendroxapp/src/views/screens/screen_congratulation.dart';

import '../../constants/colors.dart';
import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/custom_chipsChoice.dart';
 class ScreenConfirmSeedPhrase extends StatefulWidget {
  @override
  State<ScreenConfirmSeedPhrase> createState() => _ScreenConfirmSeedPhraseState();
}

class _ScreenConfirmSeedPhraseState extends State<ScreenConfirmSeedPhrase> {
   int tag = 1;

   List<String> tags = [];

   List<String> options = ['then','vacant','girl','exit','avoid','usage','ride','alien','comic','cross','upon','hub'];
   List<String> options2 = ['comic','cross','upon',];

   List<String> selectedOptions = [];
   List<String> selectedOptions2 = [];

   @override
   Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.transparent,
           leading: Icon(
             Icons.arrow_back_ios,
             color: Colors.transparent,
           ),
           toolbarHeight: 10.sp,
         ),
         body: Column(
           children: [
             Align(
               alignment: Alignment.centerLeft,
               child: Text(
                 "Confirm Seed Phrase",
                 style: subtitle2,
               ),
             ),
             Container(
               height: Get.height*.2,
               width: Get.width,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 boxShadow: [
                   BoxShadow(blurRadius: 1, color: Colors.black12.withOpacity(.3),
                     blurStyle: BlurStyle.outer,
                     spreadRadius: 4.sp,
                   ),
                 ],
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(
                     "Select each word in the order as it was presented to you",
                     style: subtitle1,
                   ).marginSymmetric(
                     horizontal: 10.sp,
                     vertical: 15.sp,
                   ),
                   CustomChipsChoice<String>(
                     options: options2,
                     selectedOptions: selectedOptions2,
                     onChanged: (List<String> selectedItems) {
                       setState(() {
                         selectedOptions2 = selectedItems;
                       });
                     },
                   ),
                 ],
               )
             ).marginSymmetric(
               vertical: 20.sp,
             ),
             CustomChipsChoice<String>(
               options: options,
               selectedOptions: selectedOptions,
               onChanged: (List<String> selectedItems) {
                 setState(() {
                   selectedOptions = selectedItems;
                 });
               },
             ),
             Spacer(),
             CustomButton(
                 buttonColor: lightButtonColor,
                 text: "Continue", onTap: () {
                   Get.to(ScreenCongratulation());
             }),
           ],
         ).marginSymmetric(horizontal: 15.sp, vertical: 25.sp),
       ),
     );
   }
}
