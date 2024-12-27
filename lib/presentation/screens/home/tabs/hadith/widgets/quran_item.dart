import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami_c13_offline/core/resources/app_styles.dart';
import 'package:islami_c13_offline/core/resources/assets_manager.dart';
import 'package:islami_c13_offline/core/routes_manager/routes_manager.dart';
import 'package:islami_c13_offline/model/sura.dart';
import 'package:islami_c13_offline/model/sura_details_arguments.dart';

class QuranItem extends StatelessWidget {
  const QuranItem({super.key, required this.index, required this.sura});

  // final SuraDM suraDM;
  final int index;
  final Sura sura;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        String suraNameEn = sura.nameEn;
        String suraNameAr = sura.snameAr;
        String fileName = sura.fileName;
        Navigator.pushNamed(context, RoutesManager.suraDetails,
            arguments: SuraDetailsArguments(
                nameEn: suraNameEn, nameAr: suraNameAr, fileName: fileName));
      },
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(SvgAssets.islamicBg),
              Text('${index + 1}', style: AppStyles.whiteBold12)
            ],
          ),
          const SizedBox(
            width: 24,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(sura.nameEn, style: AppStyles.whiteBold20),
                Text('${sura.numberOfVerses} verses',
                    style: AppStyles.whiteBold14),
              ],
            ),
          ),
          Text(sura.snameAr, style: AppStyles.whiteBold20),
        ],
      ),
    );
  }
}

class SuraDM {
  String suraNameEn;
  String suraNameAr;
  String versesNumber;
  int index;

  SuraDM(
      {required this.suraNameEn,
      required this.suraNameAr,
      required this.versesNumber,
      required this.index});
}
