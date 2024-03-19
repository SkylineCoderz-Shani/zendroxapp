import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zendroxapp/src/views/layouts/layout-homepage.dart';
import 'package:zendroxapp/src/views/layouts/layout_history.dart';
import 'package:zendroxapp/src/views/layouts/layout_transactions.dart';
import 'package:zendroxapp/src/views/layouts/layout_wallet.dart';

import '../../src/custom_widgets/custom_NavBar.dart';
import '../../src/views/layouts/layout_profile.dart';


class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomNavBar(
          pages: [
            LayoutHomePage(),
            LayoutWallet(),
            LayoutTransactions(),
            LayoutHistory(),
            LayoutProfile(),
          ],
          navItems: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.red, ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet, color: Colors.red,),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history, color: Colors.red,),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.red,),
              label: 'Profile',
            ),
          ],
          fab: FloatingActionButton(
            onPressed: () {
              Get.to(LayoutTransactions());
            },
            child: Image.asset("assets/images/icon1.png", width: 20.sp, height: 20.sp,),
          ),
          initialIndex: 0,
          onNavItemTapped: (index) {
            print('Tapped index: $index');
          },
        ).marginSymmetric(horizontal: 6.sp, vertical: 5.sp),
      ),
    );
  }
}
