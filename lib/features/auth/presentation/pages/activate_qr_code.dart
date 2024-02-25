import 'package:atmtha_mobile/core/widgets/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app_theme/colors.dart';
import '../../../../resources/resources.dart';
import '../widgets/textfield_inputs.dart';

class ActivateCode extends StatefulWidget {
  const ActivateCode({Key? key}) : super(key: key);
  static String name = "activate_code";
  static String path = "/activate_code";
  @override
  State<ActivateCode> createState() => _ActivateCodeState();
}

class _ActivateCodeState extends State<ActivateCode> {
  final TextEditingController phone = TextEditingController();
  final TextEditingController code = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Image.asset(Images.atmthaLogo),
         SizedBox(
           height: 20.h,

         ),
        Container(
          alignment: Alignment.center,
          width: 389.w,
          height: 155.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
                width: 2,
                color: lightColorScheme.outline),
          ),
          child:Column(
            children: [
              UserNameField(controller: phone),
              SizedBox(
                height: 5.h,
              ),
              QrCodeInput(controller: code),

            ],
          ) ,

        ),
              SizedBox(height: 50.h,),
              MainButtonInActive(text: "استمرار", onPressed:(){
              }),
              SizedBox(height: 40.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("أو عن طريق",style: Theme.of(context).textTheme.bodyLarge),
                  SizedBox(width: 15.w,),
                  GestureDetector(
                    onTap: (){

                    },
                    child: SvgPicture.asset(Images.qrCodeIcon,
                      width: 52.w,
                      height: 50.h,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.h,),
              Text("خطوات التفعيل ",style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: lightColorScheme.primary,
                color: lightColorScheme.primary,
              ),),
             Row(
               children: [
                 Container(
                     margin: REdgeInsets.only(right: 120,top: 145),
                     child: SvgPicture.asset(
                       Images.plant,
                       width: 23.w,
                       height: 67.h,
                     )),
                 Container(
                     margin: REdgeInsets.only(right: 100,top: 60),
                     child: SvgPicture.asset(
                       Images.qrCodeGirl,
                       width: 123.w,
                       height: 152.h,
                     )),
               ],
             )



            ],
          ),


          ]
      )
    );
  }
}
