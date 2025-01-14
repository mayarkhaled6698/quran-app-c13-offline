import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami_c13_offline/core/resources/app_constant.dart';
import 'package:islami_c13_offline/core/resources/assets_manager.dart';
import 'package:islami_c13_offline/core/resources/colors_manager.dart';

class QuranItem extends StatelessWidget {
  const QuranItem({super.key, required this.index});

  // final SuraDM suraDM;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(SvgAssets.islamicBg),
            Text(
              '${index + 1}',
              style: const TextStyle(
                color: ColorsManager.white,
              ),
            )
          ],
        ),
        const SizedBox(
          width: 24,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppConstant.suras[index].nameEn,
                style: const TextStyle(color: ColorsManager.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                '${AppConstant.suras[index].numberOfVerses} verses',
                style: const TextStyle(color: ColorsManager.white, fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Text(
          AppConstant.suras[index].snameAr,
          style: const TextStyle(color: ColorsManager.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class SuraDM {
  String suraNameEn;
  String suraNameAr;
  String versesNumber;
  int index;

  SuraDM({required this.suraNameEn, required this.suraNameAr, required this.versesNumber, required this.index});
}
