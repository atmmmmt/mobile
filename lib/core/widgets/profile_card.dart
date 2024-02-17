
import 'package:atmtha_mobile/core/app_theme/colors.dart';
import 'package:atmtha_mobile/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key, required this.image, required this.text, required this.height, required this.heightIcon,required this.onTap}) : super(key: key);
 final String image;
  final String text;
  final double height;
  final double heightIcon;
  final   Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){ onTap();},
      child: Center(
        child: Container(
          width: 380.w,
          height:height.h,
          transform: Matrix4.skewX(-.5/4),
          decoration: BoxDecoration(
            color: lightColorScheme.onPrimary,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: lightColorScheme.secondaryContainer,width: 1.5),
            boxShadow:[
              BoxShadow(
                color:lightColorScheme.secondaryContainer,
                offset:const Offset(0, 2),
              )
            ],
          ),
          child: Row(
            children: [
              SizedBox(width: 35,),
              SvgPicture.asset(image,color: lightColorScheme.primary,width: 41.w,height: heightIcon.h,),
              SizedBox(width: 30,),
              Text(text,style: Theme.of(context).textTheme.headlineSmall,),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_sharp,color: lightColorScheme.primary,size: 23,))
            ],
          ),
        ),
      ),
    );
  }
}
