import 'package:flutter/cupertino.dart';

class SuraDetailsArguments {
  final String nameEn;
  final String nameAr;
  final String fileName;
  final GlobalKey<MostRecentSurasWidgetState> mostRecentSurasKey;

  const SuraDetailsArguments({required this.nameEn, required this.nameAr, required this.fileName, required this.mostRecentSurasKey});
}
