import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class ChangePassListTile extends StatelessWidget {
  const ChangePassListTile({Key? key, required this.tittle, required this.subtitle, required this.icon}) : super(key: key);
final String tittle ;
final String subtitle;
final IconData icon ;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        title: Text(tittle),
        subtitle: Text(subtitle),
        leading: Container(
          width: 50.w,
          height: 50.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
            BoxShadow(
            color: lightColorScheme.background,
            offset: const Offset(2, 6),
            //blurRadius: 9/5,
          ),
              
          ] ),
          child: Icon(icon,color: lightColorScheme.onTertiaryContainer,),
        ),
      ),
    );
  }
}
