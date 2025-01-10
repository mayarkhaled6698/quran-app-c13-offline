import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami_c13_offline/core/resources/colors_manager.dart';

import '../../../../../../core/resources/assets_manager.dart';

class RadioWidget extends StatelessWidget {
  final String name;
  final String muteImage;
  final String pauseImage;
  final String backgroundImage;

  const RadioWidget({
    super.key,
    required this.name,
    required this.muteImage,
    required this.pauseImage,
    required this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    bool isSoundWaveBackground = backgroundImage == AssetImages.soundWave;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.gold,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: ColorsManager.black,
              ),
            ),
            if (isSoundWaveBackground) const SizedBox(height: 24),
            Stack(alignment: AlignmentDirectional.center, children: [
              Image.asset(
                backgroundImage,
                fit: BoxFit.cover,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    color: ColorsManager.black,
                    pauseImage,
                  ),
                  const SizedBox(width: 20),
                  SvgPicture.asset(
                    muteImage,
                    height: 32,
                    width: 30,
                  ),
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
