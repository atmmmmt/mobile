import 'package:atmtha_mobile/core/app_theme/colors.dart';
import 'package:atmtha_mobile/core/widgets/app_buttons.dart';
import 'package:atmtha_mobile/resources/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);
  static String name = "Contact_Us_screen";
  static String path = "/Contact_Us_screen";


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
            appBar: AppBar(
              elevation: 3.5,
              title: Text("تواصل معنا ",
                  style: Theme.of(context).textTheme.titleMedium),
              actions: [
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: SvgPicture.asset(Images.appBarIcon)),
                ),
              ],
            ),
            body: Column(
                children: [
              SizedBox(
                height: 30.h,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    "اكتب أي مشكلة أو رسالة لفريق أتمتها ",
                    style: Theme.of(context).textTheme.headlineSmall,
                  )),
              SizedBox(
                height: 5.h,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text("وسنجيبك بأسرع وقت ",
                      style: Theme.of(context).textTheme.headlineSmall)),
              SizedBox(height: 28.h,),
              Container(
                  alignment: Alignment.center,
                  width: 389.w,
                  height: 326.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border:
                        Border.all(width: 2, color: lightColorScheme.outline),
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                          decoration: InputDecoration(
                        label: Text(
                          "كلمة مفتاحية للرسالة",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        contentPadding: REdgeInsets.all(10.0),
                      )),
                      TextFormField(
                        maxLength: 8,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                        label: Text(
                          "تفاصيل الرسالة",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        contentPadding: REdgeInsets.all(10.0),
                      )),
                    ],
                  )),
                  SizedBox(height: 45.h,),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 392.w,
                height: 57.h,
                transform: Matrix4.skewX(-.5 / 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: lightColorScheme.tertiary,
                      offset: Offset(2, 6),
                      //blurRadius: 9/5,
                    )
                  ],
                  color: lightColorScheme.primary,
                ),
                child: Center(
                    child: Text(
                      "تسجيل الدخول",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: lightColorScheme.background),
                    )),
              ),
            ),
                 const  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(margin: EdgeInsets.only(top: 155.h),
                          child: SvgPicture.asset(Images.congratsSvg,height: 57.h,width: 27.w,)),
                      Container( margin: EdgeInsets.only(top:20.h ),
                          child: Image.asset(Images.boyContactUs,height: 197.h,width: 144.w,)),

                    ],
                  )

            ])));
  }
}
