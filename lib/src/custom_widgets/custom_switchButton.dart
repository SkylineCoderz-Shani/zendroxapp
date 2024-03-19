import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zendroxapp/src/custom_widgets/small_text.dart';

import '../constants/colors.dart';
import 'custom_button.dart';
import 'custom_container_textField.dart';
class ReminderSwitch extends StatefulWidget {
  @override
  _ReminderSwitchState createState() => _ReminderSwitchState();
}

class _ReminderSwitchState extends State<ReminderSwitch> {
  bool _isSwitched = false;

  get buttonColor => Color(0xffFF4956);
  // void _showReminderDialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: LargeText(text: "Reminder Notification", textColor: textColor,),
  //         content: Container(
  //           height: Get.height*.16,
  //           width: Get.width,
  //           child: Column(
  //             children: [
  //               CustomStyledTextField(hintText: "Date",),
  //               CustomStyledTextField(hintText: "Time",),
  //             ],
  //           ),
  //         ),
  //         actions: <Widget>[
  //           Align(
  //             alignment: Alignment.center,
  //             child: CustomButton(
  //               buttonColor: buttonColor,
  //               textColor: textColor,
  //               width: Get.width*.3,
  //               text: "Set", onTap: () {
  //                       Navigator.of(context).pop();
  //                     },
  //                     ),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _isSwitched,
      onChanged: (value) {
        setState(() {
          _isSwitched = value;
          if (_isSwitched) {
            // _showReminderDialog(context);
          }
        });
      },
    );
  }
}