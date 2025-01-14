import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami_c13_offline/core/resources/app_constant.dart';
import 'package:islami_c13_offline/core/resources/app_styles.dart';
import 'package:islami_c13_offline/core/resources/assets_manager.dart';
import 'package:islami_c13_offline/core/resources/colors_manager.dart';

import '../quran/widgets/quran_item.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AssetImages.mainBackground,
              ),
              fit: BoxFit.cover)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.asset(AssetImages.islamiLogo),
        buildSearchField(),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Most recent',
          style: AppStyles.whiteSugarBold16,
        ),
        buildQuranList(),
      ]),
    );
    // child: Column(
    //   crossAxisAlignment: CrossAxisAlignment.stretch,
    //   children: [
    //     Image.asset(AssetImages.islamiLogo),
    //     buildSearchField(),
    //     const SizedBox(
    //       height: 10,
    //     ),
    //     const Text(
    //       'Most Recent',
    //       textAlign: TextAlign.start,
    //       style: TextStyle(
    //           fontSize: 16,
    //           fontWeight: FontWeight.bold,
    //           color: ColorsManager.whiteSugar),
    //     ),
    //     // SizedBox(
    //     //   height: 150,
    //     //   child: ListView.builder(
    //     //
    //     //     scrollDirection: Axis.horizontal,
    //     //     itemBuilder: (context, index) => MostRecentItem(),
    //     //     itemCount: 6,
    //     //   ),
    //     // ),
    //     const Text(
    //       'Quran',
    //       textAlign: TextAlign.start,
    //       style: TextStyle(
    //           fontSize: 16,
    //           fontWeight: FontWeight.bold,
    //           color: ColorsManager.whiteSugar),
    //     ),
    //      buildQuranList(),
    //   ],
    // ));
  }

  buildQuranList() => Expanded(
        child: ListView.separated(
            itemCount: AppConstant.suraNamesAr.length,
            itemBuilder: (context, index) {
              return QuranItem(
                index: index,
              );
            },
            separatorBuilder: (context, index) => const Divider(
                  color: ColorsManager.white,
                  endIndent: 30,
                  indent: 30,
                  height: 30,
                )),
      );

  Widget buildSearchField() {
    return TextField(
      cursorColor: ColorsManager.white,
      style: const TextStyle(color: ColorsManager.white),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        prefixIcon: Container(padding: EdgeInsets.all(14), child: SvgPicture.asset(SvgAssets.quranSearchIcon)),
        hintText: 'Sura name',
        hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: ColorsManager.whiteSugar),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: ColorsManager.gold, width: 1)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: ColorsManager.gold, width: 1)),
      ),
    );
  }
}
