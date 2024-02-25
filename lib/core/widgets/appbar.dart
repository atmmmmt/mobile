import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/resources.dart';
 class MainAppBar extends StatelessWidget {
   const MainAppBar({Key? key, required this.text}) : super(key: key);
final String text;
   @override
   Widget build(BuildContext context) {
     return AppBar(
         elevation: 3.5,
         title: Text(text,
             style: Theme.of(context).textTheme.titleMedium),
         actions: [
           GestureDetector(
             onTap: () {},
             child: Padding(
                 padding: EdgeInsets.only(left: 20),
                 child: SvgPicture.asset(Images.atmthaLogo)),
           ),
         ],

     );
   }
 }
