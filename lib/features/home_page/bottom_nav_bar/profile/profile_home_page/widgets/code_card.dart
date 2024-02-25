import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/app_theme/colors.dart';
import '../../../../../../core/widgets/profile_card.dart';

class CodeCard extends StatelessWidget {
  const CodeCard({
    super.key,
    required this.codesCard,
  });

  final List<CodesCard> codesCard;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: REdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Container(
              height: 280.h,
              width: 380.w,
              transform: Matrix4.skewX(-.5 / 7.5),
              decoration: BoxDecoration(
                border: Border.all(
                    color: lightColorScheme.outline, width: 3.5),
                color: lightColorScheme.background,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    final category = codesCard[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ListTile(

                            leading: Image.asset(
                              category.image,
                              width: 18,
                              height: 18,
                            ),
                            title: Row(
                              children: [
                                Text(
                                  category.cardInfo[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: lightColorScheme
                                          .primaryContainer),
                                ),
                                SizedBox(
                                  width: 40.w,
                                ),
                                Text(category.cardInfo2[index]),
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  }),
            )),
      ],
    );
  }
}
