import 'package:atmtha_mobile/core/app_theme/colors.dart';
import 'package:atmtha_mobile/features/quiz/free_quiz_levels/widgets/subject_listtile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../resources/resources.dart';

class QuizLevels extends StatefulWidget {
  QuizLevels({Key? key}) : super(key: key);

  @override
  State<QuizLevels> createState() => _QuizLevelsState();
}

class _QuizLevelsState extends State<QuizLevels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.h,
        elevation: 2,
        title: Text("رياضيات", style: Theme.of(context).textTheme.titleMedium),
        leading:
            GestureDetector(onTap: () {}, child: Image.asset(Images.backArrow)),
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
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LevelBox(),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class LevelBox extends StatelessWidget {
  LevelBox({
    super.key,
  });
  final List<String> levelBox = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SubjectListTile(
          title: "الوحدة الأولى",
          subtitle: "5دروس - 20سؤال",
        ),
        SizedBox(
          height: 30.h,
        ),
        Row(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border:
                      Border.all(color: lightColorScheme.outline, width: 1.5),
                  color: lightColorScheme.outline,
                  boxShadow: [
                    BoxShadow(
                      color: lightColorScheme.outline,
                      offset: Offset(0, 2),
                      // blurRadius: 7/6,
                    ),
                  ],
                ),
                width: 86,
                height: 74,
                child: Center(
                    child: Text(
                  levelBox[index],
                  style: Theme.of(context).textTheme.displayMedium,
                )),
              );
            }),
            SvgPicture.asset(
                          Images.levelsBoy,
                          width: 142.w,
                          height: 128.h,
                        ),
          ],
        ),
      ],
    );
  }
}
