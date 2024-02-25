import 'package:atmtha_mobile/core/widgets/appbar.dart';
import 'package:atmtha_mobile/core/widgets/profile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/app_theme/colors.dart';
import '../../../../../core/widgets/listtile_card.dart';
import '../../../../../resources/resources.dart';

class FavouriteScreen extends StatelessWidget {
  static String name = "favourite_screen";
  static String path = "/favourite_screen";

  FavouriteScreen({Key? key}) : super(key: key);
  final List<Subjects> subject = [
    Subjects(subject: "رياضيات"),
    Subjects(subject: "علوم"),
    Subjects(subject: "جغرافيا"),
    Subjects(subject: "عربي"),
    Subjects(subject: "فيزياء"),
    Subjects(subject: "كيمياء"),
    Subjects(subject: "ديانة"),
    Subjects(subject: "وطنية"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80.h,
          elevation: 2,
          title:
              Text("المفضلة", style: Theme.of(context).textTheme.titleMedium),
          leading:  GestureDetector(
              onTap: () {},
              child:Image.asset(Images.backArrow)),
          actions: [
            Container(
              margin: REdgeInsets.only(left: 20),
              child: GestureDetector(
                onTap: () {},
                child:Image.asset(Images.notificationIcon)),
            )
          ],
        ),
        body: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
              final category = subject[index];
              return Padding(
                padding: REdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Container(
                      width: 392.w,
                      height: 64.h,
                      transform: Matrix4.skewX(-.5 / 4),
                      decoration: BoxDecoration(
                        color: lightColorScheme.background,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: lightColorScheme.outline),
                        boxShadow: [
                          BoxShadow(
                            color: lightColorScheme.secondaryContainer.withOpacity(0.3),
                          )
                        ],
                      ),

                      child: ListTile(
                        title: Text(category.subject),
                        leading: Icon(Icons.star),
                        trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: lightColorScheme.primary,
                            )),
                      ),
                    ),
                  ],
                ),
              );
            }));
  }
}
