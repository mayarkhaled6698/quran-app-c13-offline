import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/resources/colors_manager.dart';

class PrayTimesTab extends StatefulWidget {
  const PrayTimesTab({super.key});

  @override
  State<PrayTimesTab> createState() => _PrayTimesTabState();
}

class _PrayTimesTabState extends State<PrayTimesTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AssetImages.praysTimesBG,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.8),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset(AssetImages.islamiLogo)),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: ColorsManager.brown,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    child: Stack(
                      children: [
                        Image.asset(AssetImages.prayTimeBackground),
                        Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 23, vertical: 12),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '16 Jul ,\n2024',
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: ColorsManager.whiteSugar),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Pray Time',
                                        style: TextStyle(color: ColorsManager.black60),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 8),
                                        child: Text(
                                          'Tuesday',
                                          style: TextStyle(color: ColorsManager.blackAcc),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '09 Muh, \n 1446',
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: ColorsManager.whiteSugar),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: CarouselSlider.builder(
                                itemBuilder: (context, index, realIndex) {
                                  return buildPrayTimeWidget();
                                },
                                options: CarouselOptions(
                                  autoPlay: true,
                                  aspectRatio: 2.5,
                                  enlargeCenterPage: true,
                                  viewportFraction: 0.256,
                                ),
                                itemCount: 7,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  const Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 24),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Next Pray - ',
                                            style: TextStyle(color: ColorsManager.blackAcc),
                                          ),
                                          Text(
                                            '02:32 ',
                                            style: TextStyle(color: ColorsManager.blackAcc, fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 24),
                                    child: Image.asset(AssetImages.volume),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Text(
                    'Azkar',
                    style: TextStyle(
                      color: ColorsManager.whiteSugar,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 22),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorsManager.gold,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 250,
                      width: 175,
                      child: Column(
                        children: [
                          Image.asset(AssetImages.bellIcon),
                          const Text(
                            'Evening Azkar',
                            style: TextStyle(color: ColorsManager.whiteSugar, fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 22),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorsManager.gold,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 250,
                      width: 175,
                      child: Column(
                        children: [
                          Image.asset(AssetImages.commentBubbleIcon),
                          const Text(
                            'Morning Azkar',
                            style: TextStyle(color: ColorsManager.whiteSugar, fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

buildPrayTimeWidget() {
  return SingleChildScrollView(
    child: Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: ColorsManager.black60,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Column(
        children: [
          Text(
            'Asr',
            style: TextStyle(
              color: ColorsManager.whiteSugar,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            '3:23',
            style: TextStyle(
              color: ColorsManager.whiteSugar,
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'pm',
            style: TextStyle(
              color: ColorsManager.whiteSugar,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    ),
  );
}
