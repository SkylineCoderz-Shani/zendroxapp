import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zendroxapp/src/views/screens/screen_confirmSeedphrase.dart';

import '../../constants/colors.dart';
import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/custom_chipsChoice.dart';

class ScreenWriteSeedPhrase extends StatefulWidget {
  @override
  State<ScreenWriteSeedPhrase> createState() => _ScreenWriteSeedPhraseState();
}

class _ScreenWriteSeedPhraseState extends State<ScreenWriteSeedPhrase> {
  int tag = 1;

  List<String> tags = [];
  List<String> options = ['1.then','2.vacant','3.girl','4.exit','5.avoid','6.usage','7.ride','8.alien','9.comic','10.cross','11.upon','12.hub'];

  List<String> selectedOptions = [];

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
                "Write Down Your Seed Phrase",
                style: subtitle2,
              ),
            ),
            Text(
              "This is your seed phrase. Write it down on a paper and keep it in a safe place. You'll be asked to re-enter this phrase (in order) on the next step.",
              style: subtitle1,
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
                  Get.to(ScreenConfirmSeedPhrase());
            }),
          ],
        ).marginSymmetric(horizontal: 15.sp, vertical: 25.sp),
      ),
    );
  }
}
