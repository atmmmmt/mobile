import 'package:atmtha_mobile/core/widgets/profile_card.dart';
import 'package:atmtha_mobile/features/home_page/bottom_nav_bar/profile/profile_home_page/widgets/code_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../resources/resources.dart';

class MyCodesScreen extends StatelessWidget {
  MyCodesScreen({Key? key}) : super(key: key);
  static String name = "my_code_screen";
  static String path = "/my_code_screen";

  final List<CodesCard> codesCard = [
    CodesCard(
        cardInfo: ["رمز الكود", "تاريخ الانتهاء", "الحالة", "سعر الباقة"],
        image: Images.codeIcon,
        cardInfo2: [
          "3242k42fs4",
          "15-4-2023",
          "علمي",
          "20 الف",
        ]),
    CodesCard(
        cardInfo: ["رمز الكود", "تاريخ الانتهاء", "الحالة", "سعر الباقة"],
        image: Images.calenderIcon,
        cardInfo2: [
          "3242k42fs4",
          "15-4-2023",
          "علمي",
          "20 الف",
        ]),    CodesCard(
        cardInfo: ["رمز الكود", "تاريخ الانتهاء", "الحالة", "سعر الباقة"],
        image: Images.paymentIcon,
        cardInfo2: [
          "3242k42fs4",
           "15-4-2023",
        "علمي",
              "20 الف",
        ]),
    CodesCard(
        cardInfo: ["رمز الكود", "تاريخ الانتهاء", "الحالة", "سعر الباقة"],
        image: Images.dangerIcon,
        cardInfo2: [
          "3242k42fs4",
          "15-4-2023",
          "علمي",
          "20 الف",
        ]),  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.h,
        elevation: 2,
        title: Text("أكوادي", style: Theme.of(context).textTheme.titleMedium),
        leading: GestureDetector(
            onTap: () {},
            child: Image.asset(
              Images.backArrow,
              width: 54,
              height: 47,
            )),
        actions: [
          Container(
            margin: REdgeInsets.only(left: 20),
            child: GestureDetector(
                onTap: () {}, child: Image.asset(Images.notificationIcon)),
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 50.h,
          ),
          SvgPicture.asset(Images.mycodesGirl),
          SizedBox(
            height: 20.h,
          ),

 CodeCard(codesCard: codesCard)]),



    );
  }
}

