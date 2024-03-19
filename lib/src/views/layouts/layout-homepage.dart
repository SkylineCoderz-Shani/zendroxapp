import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zendroxapp/src/custom_widgets/custom_icon.dart';
import 'package:zendroxapp/src/custom_widgets/custom_image.dart';

class LayoutHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Color(0xffDB3550),
              ),
            ),
            child: Image.asset("assets/images/profile1.png")
          ),
          title: Column(
            children: [
              Text("Hello! Welcome", style: GoogleFonts.inter(
                  fontWeight: FontWeight.w800,
                  fontSize: 14.sp,
                  color: Color(0xffDB3550),
              ),),
              Text("Larry weiner",style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.black
              ),),
            ],
          ),
          actions: [
            Row(
              children: [
                CustomImage(
                  name: "scanner",
                  height: 30.sp,
                ).marginSymmetric(
                  horizontal: 10.sp,
                ),
                Icon(Icons.notifications, size: 40.sp,)
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: Get.height*.2,
                width: Get.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [ Color(0xffDB3550),Color(0xffF10F0F).withOpacity(.7)], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(35.sp),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.9),
                      spreadRadius: 2.sp,
                      blurRadius: 2,
                    ),
                  ]
                ),
               child: Column(
                 children: [
                   Align(
                      alignment: Alignment.centerLeft,
                     child: Text("Main Balance", style: GoogleFonts.inter(
                       fontWeight: FontWeight.w600,
                       fontSize: 16.sp,
                       color: Colors.white
                     ),),
                   ).marginSymmetric(
                     vertical: 6.sp,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Align(
                       alignment: Alignment.centerLeft,
                       child: Text("\$ 1,456,204", style: GoogleFonts.inter(
                           fontWeight: FontWeight.w600,
                           fontSize: 24.sp,
                           color: Colors.white
                       ),),
                     ),
                       CustomIcon(
                         name: "audi",
                       )
                ]
                   ),
                 ],
               ).marginSymmetric(
                 vertical: 30.sp,
                 horizontal: 30.sp,
               ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xffF1885C)
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                          child: Icon(Icons.send, color: Color(0xffF1885C)),
                        ),
                          ]
                      ),
                    ),
                    Text("Send", style: GoogleFonts.inter(
                      fontWeight: FontWeight.w800,
                      fontSize: 14.sp,
                      color: Color(0xffF6543E),
                    )
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xffF1885C)
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                          child: Icon(Icons.file_download_outlined, color: Color(0xffF1885C)),
                        ),
                          ]
                      ),
                    ),
                    Text("Receive", style: GoogleFonts.inter(
                      fontWeight: FontWeight.w800,
                      fontSize: 14.sp,
                      color: Color(0xffF6543E),
                    )
                    )
                  ],
                ).marginSymmetric(
                  horizontal: 40.sp,
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xffF1885C)
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                          child: Icon(Icons.local_grocery_store_outlined, color: Color(0xffF1885C)),
                        ),
                          ]
                      ),
                    ),
                    Text("Buy", style: GoogleFonts.inter(
                      fontWeight: FontWeight.w800,
                      fontSize: 14.sp,
                      color: Color(0xffF6543E),
                    )
                    )
                  ],
                ),
                ],
              ).marginSymmetric(
                vertical: 10.sp,
              ),
              Container(
                height: Get.height*.6,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29.sp),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.06),
                      blurStyle: BlurStyle.outer
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 8.sp,
                        width: 60.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xffE1DFFF)
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Fav Assest", style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Color(0xffAEB6CE)
                        )),
                        Text("See all", style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            color: Color(0xffDB3550)
                        )),
                      ],
                    ),
                    ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffF6543E).withOpacity(.3),
                              blurStyle: BlurStyle.inner,
                            )
                          ]
                        ),
                        child: Center(
                          child: Image.asset("assets/icons/bit.png"),
                        ),
                      ),
                      title: Text("BTC", style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: Color(0xffAEB6CE)
                      )),
                      subtitle: Text("+1.6%", style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                          color: Color(0xffAEB6CE)
                      )),
                      trailing: Column(
                        children: [
                          Text("\$ 29,850.15 ", style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                              color: Color(0xffAEB6CE)
                          )),
                          Text("2.73 BTC ", style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                              color: Color(0xffAEB6CE)
                          )),
                        ],
                      )
                    ),
                    ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffF6543E).withOpacity(.3),
                              blurStyle: BlurStyle.inner,
                            )
                          ]
                        ),
                        child: Center(
                          child: Image.asset("assets/icons/eth.png"),
                        ),
                      ),
                      title: Text("ETH", style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: Color(0xffAEB6CE)
                      )),
                      subtitle: Text("-o.82%", style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                          color: Color(0xffAEB6CE)
                      )),
                      trailing: Column(
                        children: [
                          Text("\$ 10,850.15 ", style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                              color: Color(0xffAEB6CE)
                          )),
                          Text("47.66 ETH ", style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                              color: Color(0xffAEB6CE)
                          )),
                        ],
                      )
                    ),
                    ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffF6543E).withOpacity(.3),
                              blurStyle: BlurStyle.inner,
                            )
                          ]
                        ),
                        child: Center(
                          child: Image.asset("assets/icons/vex.png"),
                        ),
                      ),
                      title: Text("LTC", style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: Color(0xffAEB6CE)
                      )),
                      subtitle: Text("-2.82%", style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                          color: Color(0xffAEB6CE)
                      )),
                      trailing: Column(
                        children: [
                          Text("\$ 18,667.15 ", style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                              color: Color(0xffAEB6CE)
                          )),
                          Text("17.66 LTC ", style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                              color: Color(0xffAEB6CE)
                          )),
                        ],
                      )
                    ),
                    ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffF6543E).withOpacity(.3),
                              blurStyle: BlurStyle.inner,
                            )
                          ]
                        ),
                        child: Center(
                          child: Image.asset("assets/icons/xrp.png"),
                        ),
                      ),
                      title: Text("XRP", style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: Color(0xffAEB6CE)
                      )),
                      subtitle: Text("47.33%", style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                          color: Color(0xffAEB6CE)
                      )),
                      trailing: Column(
                        children: [
                          Text("\$ 90,667.15 ", style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                              color: Color(0xffAEB6CE)
                          )),
                          Text("22.66 XRP ", style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                              color: Color(0xffAEB6CE)
                          )),
                        ],
                      )
                    ),
                    ListTile(
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffF6543E).withOpacity(.3),
                                  blurStyle: BlurStyle.inner,
                                )
                              ]
                          ),
                          child: Center(
                            child: Image.asset("assets/icons/eth.png"),
                          ),
                        ),
                        title: Text("ETH", style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Color(0xffAEB6CE)
                        )),
                        subtitle: Text("-o.82%", style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp,
                            color: Color(0xffAEB6CE)
                        )),
                        trailing: Column(
                          children: [
                            Text("\$ 10,850.15 ", style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                                color: Color(0xffAEB6CE)
                            )),
                            Text("47.66 ETH ", style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 12.sp,
                                color: Color(0xffAEB6CE)
                            )),
                          ],
                        )
                    ),

                  ],
                ).marginSymmetric(
                  vertical: 15.sp,
                  horizontal: 15.sp,
                ),
              ),
            ],
          ).marginSymmetric(vertical: 25.sp),
        ),
      );
  }
}
