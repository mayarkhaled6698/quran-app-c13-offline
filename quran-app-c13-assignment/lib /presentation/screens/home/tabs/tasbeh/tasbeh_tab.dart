import 'package:flutter/material.dart';
import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/resources/colors_manager.dart';

class TasbehTab extends StatefulWidget {
  const TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  List<String> tasbehList = ['سبحان الله', 'الحمد لله', 'لا اله الا الله', 'الله اكبر'];
  int _counter = 0;
  int _currentTasbehIndex = 0;

  void _incrementCounter() {
    if (_counter < 30) {
      setState(() {
        _counter++;
      });
    } else {
      setState(() {
        _counter = 0;
        _currentTasbehIndex = (_currentTasbehIndex + 1) % tasbehList.length;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            AssetImages.alsebhaBackgound,
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
              const Center(
                child: Text(
                  'سبح اسم ربك الاعلى',
                  style: TextStyle(color: ColorsManager.white, fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(top: 0.5, child: Image.asset(AssetImages.alsebhaHead)),
                  Image.asset(AssetImages.alsebhaBody),
                  InkWell(
                    onTap: () {
                      _incrementCounter();
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          tasbehList[_currentTasbehIndex],
                          style: const TextStyle(color: ColorsManager.white, fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        Text('$_counter', style: const TextStyle(color: ColorsManager.white, fontSize: 28, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
