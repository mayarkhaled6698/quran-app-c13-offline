import 'package:flutter/material.dart';
import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/resources/colors_manager.dart';

class TasbehTab extends StatefulWidget {
  const TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> with TickerProviderStateMixin {
  List<String> tasbehList = ['سبحان الله', 'الحمد لله', 'لا اله الا الله', 'الله اكبر'];
  int _counter = 0;
  int _currentTasbehIndex = 0;

  late AnimationController _controller;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _rotationAnimation = Tween<double>(begin: 0, end: 3.14159 / 180).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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

    if (!_controller.isAnimating) {
      _controller.forward(from: 0);
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
                  // Sebha Head image with rotation
                  Positioned(
                    top: 0.5,
                    child: RotationTransition(
                      turns: _rotationAnimation,
                      child: Image.asset(AssetImages.alsebhaHead),
                    ),
                  ),
                  // Sebha Body image with rotation
                  RotationTransition(
                    turns: _rotationAnimation,
                    child: Image.asset(AssetImages.alsebhaBody),
                  ),
                  InkWell(
                    onTap: () {
                      _incrementCounter(); // Increment counter and trigger rotation for both images
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
