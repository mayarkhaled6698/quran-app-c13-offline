import 'package:flutter/material.dart';
import 'package:islami_c13_offline/core/resources/colors_manager.dart';
import 'package:islami_c13_offline/presentation/screens/home/tabs/radio/widgets/radio_widget.dart';
import '../../../../../core/resources/assets_manager.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({super.key});

  @override
  _RadioTabState createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  bool _showRadioWidget = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AssetImages.womenReadingQuran,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.8),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset(AssetImages.islamiLogo)),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorsManager.black60,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 40,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _showRadioWidget = true;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _showRadioWidget ? ColorsManager.gold : ColorsManager.black60,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text(
                              'Radio',
                              style: TextStyle(
                                color: _showRadioWidget ? ColorsManager.black : ColorsManager.whiteSugar,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _showRadioWidget = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: !_showRadioWidget ? ColorsManager.gold : ColorsManager.black60, // Highlight the active button
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text(
                              'Reciters',
                              style: TextStyle(
                                color: _showRadioWidget ? ColorsManager.whiteSugar : ColorsManager.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (_showRadioWidget)
                  const RadioWidget(
                    name: 'Radio Ibrahim Al-Akdar',
                    pauseImage: SvgAssets.playIcon,
                    muteImage: SvgAssets.unmute,
                    backgroundImage: AssetImages.mosques,
                  ),
                const RadioWidget(
                  name: 'Radio Al-Qaria Yassen',
                  pauseImage: SvgAssets.pauseIcon,
                  muteImage: SvgAssets.muteIcon,
                  backgroundImage: AssetImages.soundWave,
                ),
                const RadioWidget(
                  name: 'Radio Ahmed Al-Trabulsi',
                  pauseImage: SvgAssets.playIcon,
                  muteImage: SvgAssets.unmute,
                  backgroundImage: AssetImages.mosques,
                ),
                const RadioWidget(
                  name: 'Radio Al-Qaria Yassen',
                  pauseImage: SvgAssets.playIcon,
                  muteImage: SvgAssets.muteIcon,
                  backgroundImage: AssetImages.mosques,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
