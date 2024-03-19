import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zendroxapp/src/views/screens/screen_write_seedPhrase.dart';

import '../../constants/colors.dart';
import '../../custom_widgets/custom_button.dart';
import '../../exceptions/list_items.dart';

class ScreenSecureWallet2 extends StatelessWidget {
  // final List<Item> items = [
  //   Item(text: 'First item'),
  //   Item(text: 'Second item'),
  //   Item(text: 'Third item'),
  //   // Add more items as needed
  // ];

  ScreenSecureWallet2({super.key});

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
                "Secure Your Wallet",
                style: subtitle2,
              ),
            ),
            Spacer(),
            Row(
              children: [
                Icon(
                  CupertinoIcons.question_circle,
                  color: Color(0xffDB3550),
                  size: 20.sp,
                ),
                Text(
                  "Why is it important?",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffDB3550),
                  ),
                ).marginSymmetric(
                  horizontal: 8.sp,
                ),
              ],
            ),
            Container(
              height:Get.height*.6,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.sp),
                boxShadow: [
                  BoxShadow(blurRadius: 1, color: Colors.black12.withOpacity(.3),
                    blurStyle: BlurStyle.outer,
                    spreadRadius: 4.sp,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Write down your seed phrase on a paper\nand store in a safe place.", style: subtitle4,),
                  Row(
                    children: [
                      Text("Security Level: ", style: subtitle4,),
                      Text("Very Strong ", style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14.sp,
                      ),),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 7.sp,
                        width: 40.sp,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20.sp),
                        ),
                      ),
                      Container(
                        height: 7.sp,
                        width: 40.sp,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20.sp),
                        ),
                      ).marginSymmetric(
                        horizontal: 10.sp,
                      ),
                      Container(
                        height: 7.sp,
                        width: 40.sp,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20.sp),
                        ),
                      ),
                      Container(
                        height: 7.sp,
                        width: 40.sp,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20.sp),
                        ),
                      ).marginSymmetric(
                        horizontal: 10.sp,
                      ),
                    ],
                  ),
                  Text("Risk are:",style: subtitle4,),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black45,
                        maxRadius: 5.sp,
                      ),
                      Text("You lose it", style: subtitle4,).marginSymmetric(
                          horizontal: 7.sp
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black45,
                        maxRadius: 5.sp,
                      ),
                      Text("You forget where you put it", style: subtitle4,).marginSymmetric(
                          horizontal: 7.sp
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black45,
                        maxRadius: 5.sp,
                      ),
                      Text("Someone else finds it", style: subtitle4,).marginSymmetric(
                        horizontal: 7.sp
                      ),
                    ],
                  ),
                  Text("Other options: Doesn't have to be paper!",style: subtitle4,),
                  Text("Tips:",style: subtitle4,),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black45,
                        maxRadius: 5.sp,
                      ),
                      Text("Store in bank vault", style: subtitle4,).marginSymmetric(
                          horizontal: 7.sp
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black45,
                        maxRadius: 5.sp,
                      ),
                      Text("Store in a safe", style: subtitle4,).marginSymmetric(
                          horizontal: 7.sp
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black45,
                        maxRadius: 5.sp,
                      ),
                      Text("Store in multiple secret places", style: subtitle4,).marginSymmetric(
                          horizontal: 7.sp
                      ),
                    ],
                  ),
                  // ListView.builder(
                  //   itemCount: items.length,
                  //   itemBuilder: (BuildContext context, int index) {
                  //     final item = items[index];
                  //     return ListTile(
                  //       leading: CircleAvatar(
                  //         child: Text('${index + 1}'),
                  //       ),
                  //       title: Text(item.text),
                  //     );
                  //   },
                  // ),
                ],
              ).marginSymmetric(
                horizontal: 10.sp,
                vertical: 20.sp,
              ),
            ).marginSymmetric(
              vertical: 15.sp,
            ),
            Spacer(),
            CustomButton(
                buttonColor: lightButtonColor,
                text: "Start", onTap: () {
                  Get.to(ScreenWriteSeedPhrase());
            }).marginSymmetric(
              vertical: 10.sp,
            ),
          ],
        ).marginSymmetric(horizontal: 15.sp,vertical: 25.sp),
      ),
    );
  }
}
