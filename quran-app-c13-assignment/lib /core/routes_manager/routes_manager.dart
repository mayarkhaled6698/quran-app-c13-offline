import 'package:flutter/cupertino.dart';
import 'package:islami_c13_offline/presentation/screens/home/home.dart';
import 'package:islami_c13_offline/presentation/screens/splash/splash.dart';

class RoutesManager {
  static const String splash = '/splash';
  static const String home = '/home';

  static Map<String, WidgetBuilder> routes = {
    splash: (_) => const Splash(),
    home: (_) => const Home(),
  };
}
