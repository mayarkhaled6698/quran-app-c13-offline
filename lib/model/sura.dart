class Sura {
  String snameAr;
  String nameEn;
  String numberOfVerses;
  String fileName;

  Sura({
    required this.snameAr,
    required this.nameEn,
    required this.numberOfVerses,
    required this.fileName,
  });

  static List<Sura> getSurasList() => [
        Sura(
            snameAr: "الفاتحه",
            nameEn: "Al-Fatiha",
            numberOfVerses: "7",
            fileName: "1.txt"),
        Sura(
            snameAr: "البقرة",
            nameEn: "Al-Baqarah",
            numberOfVerses: "286",
            fileName: "2.txt"),
        Sura(
            snameAr: "آل عمران",
            nameEn: "Aal-E-Imran",
            numberOfVerses: "200",
            fileName: "3.txt"),
        Sura(
            snameAr: "النساء",
            nameEn: "An-Nisa'",
            numberOfVerses: "176",
            fileName: "4.txt"),
        Sura(
            snameAr: "المائدة",
            nameEn: "Al-Ma'idah",
            numberOfVerses: "120",
            fileName: "5.txt"),
        Sura(
            snameAr: "الأنعام",
            nameEn: "Al-An'am",
            numberOfVerses: "165",
            fileName: "6.txt"),
        Sura(
            snameAr: "الأعراف",
            nameEn: "Al-A'raf",
            numberOfVerses: "206",
            fileName: "7.txt"),
        Sura(
            snameAr: "الأنفال",
            nameEn: "Al-Anfal",
            numberOfVerses: "75",
            fileName: "8.txt"),
        Sura(
            snameAr: "التوبة",
            nameEn: "At-Tawbah",
            numberOfVerses: "129",
            fileName: "9.txt"),
        Sura(
            snameAr: "يونس",
            nameEn: "Yunus",
            numberOfVerses: "109",
            fileName: "10.txt"),
        Sura(
            snameAr: "هود",
            nameEn: "Hud",
            numberOfVerses: "123",
            fileName: "11.txt"),
        Sura(
            snameAr: "يوسف",
            nameEn: "Yusuf",
            numberOfVerses: "111",
            fileName: "12.txt"),
        Sura(
            snameAr: "الرعد",
            nameEn: "Ar-Ra'd",
            numberOfVerses: "43",
            fileName: "13.txt"),
        Sura(
            snameAr: "إبراهيم",
            nameEn: "Ibrahim",
            numberOfVerses: "52",
            fileName: "14.txt"),
        Sura(
            snameAr: "الحجر",
            nameEn: "Al-Hijr",
            numberOfVerses: "99",
            fileName: "15.txt"),
        Sura(
            snameAr: "النحل",
            nameEn: "An-Nahl",
            numberOfVerses: "128",
            fileName: "16.txt"),
        Sura(
            snameAr: "الإسراء",
            nameEn: "Al-Isra",
            numberOfVerses: "111",
            fileName: "17.txt"),
        Sura(
            snameAr: "الكهف",
            nameEn: "Al-Kahf",
            numberOfVerses: "110",
            fileName: "18.txt"),
        Sura(
            snameAr: "مريم",
            nameEn: "Maryam",
            numberOfVerses: "98",
            fileName: "19.txt"),
        Sura(
            snameAr: "طه",
            nameEn: "Ta-Ha",
            numberOfVerses: "135",
            fileName: "20.txt"),
        Sura(
            snameAr: "الأنبياء",
            nameEn: "Al-Anbiya",
            numberOfVerses: "112",
            fileName: "21.txt"),
        Sura(
            snameAr: "الحج",
            nameEn: "Al-Hajj",
            numberOfVerses: "78",
            fileName: "22.txt"),
        Sura(
            snameAr: "المؤمنون",
            nameEn: "Al-Mu'minun",
            numberOfVerses: "118",
            fileName: "23.txt"),
        Sura(
            snameAr: "النّور",
            nameEn: "An-Nur",
            numberOfVerses: "64",
            fileName: "24.txt"),
        Sura(
            snameAr: "الفرقان",
            nameEn: "Al-Furqan",
            numberOfVerses: "77",
            fileName: "25.txt"),
        Sura(
            snameAr: "الشعراء",
            nameEn: "Ash-Shu'ara",
            numberOfVerses: "227",
            fileName: "26.txt"),
        Sura(
            snameAr: "النّمل",
            nameEn: "An-Naml",
            numberOfVerses: "93",
            fileName: "27.txt"),
        Sura(
            snameAr: "القصص",
            nameEn: "Al-Qasas",
            numberOfVerses: "88",
            fileName: "28.txt"),
        Sura(
            snameAr: "العنكبوت",
            nameEn: "Al-Ankabut",
            numberOfVerses: "69",
            fileName: "29.txt"),
        Sura(
            snameAr: "الرّوم",
            nameEn: "Ar-Rum",
            numberOfVerses: "60",
            fileName: "30.txt"),
        Sura(
            snameAr: "لقمان",
            nameEn: "Luqman",
            numberOfVerses: "34",
            fileName: "31.txt"),
        Sura(
            snameAr: "السجدة",
            nameEn: "As-Sajda",
            numberOfVerses: "30",
            fileName: "32.txt"),
        Sura(
            snameAr: "الأحزاب",
            nameEn: "Al-Ahzab",
            numberOfVerses: "73",
            fileName: "33.txt"),
        Sura(
            snameAr: "سبأ",
            nameEn: "Saba",
            numberOfVerses: "54",
            fileName: "34.txt"),
        Sura(
            snameAr: "فاطر",
            nameEn: "Fatir",
            numberOfVerses: "45",
            fileName: "35.txt"),
        Sura(
            snameAr: "يس",
            nameEn: "Ya-Sin",
            numberOfVerses: "83",
            fileName: "36.txt"),
        Sura(
            snameAr: "الصافات",
            nameEn: "As-Saffat",
            numberOfVerses: "182",
            fileName: "37.txt"),
        Sura(
            snameAr: "ص",
            nameEn: "Sad",
            numberOfVerses: "88",
            fileName: "38.txt"),
        Sura(
            snameAr: "الزمر",
            nameEn: "Az-Zumar",
            numberOfVerses: "75",
            fileName: "39.txt"),
        Sura(
            snameAr: "غافر",
            nameEn: "Ghafir",
            numberOfVerses: "85",
            fileName: "40.txt"),
        Sura(
            snameAr: "فصّلت",
            nameEn: "Fussilat",
            numberOfVerses: "54",
            fileName: "41.txt"),
        Sura(
            snameAr: "الشورى",
            nameEn: "Ash-Shura",
            numberOfVerses: "53",
            fileName: "42.txt"),
        Sura(
            snameAr: "الزخرف",
            nameEn: "Az-Zukhruf",
            numberOfVerses: "89",
            fileName: "43.txt"),
        Sura(
            snameAr: "الدّخان",
            nameEn: "Ad-Dukhan",
            numberOfVerses: "59",
            fileName: "44.txt"),
        Sura(
            snameAr: "الجاثية",
            nameEn: "Al-Jathiya",
            numberOfVerses: "37",
            fileName: "45.txt"),
        Sura(
            snameAr: "الأحقاف",
            nameEn: "Al-Ahqaf",
            numberOfVerses: "35",
            fileName: "46.txt"),
        Sura(
            snameAr: "محمد",
            nameEn: "Muhammad",
            numberOfVerses: "38",
            fileName: "47.txt"),
        Sura(
            snameAr: "الفتح",
            nameEn: "Al-Fath",
            numberOfVerses: "29",
            fileName: "48.txt"),
        Sura(
            snameAr: "الحجرات",
            nameEn: "Al-Hujurat",
            numberOfVerses: "18",
            fileName: "49.txt"),
        Sura(
            snameAr: "ق",
            nameEn: "Qaf",
            numberOfVerses: "45",
            fileName: "50.txt"),
        Sura(
            snameAr: "الذاريات",
            nameEn: "Adh-Dhariyat",
            numberOfVerses: "60",
            fileName: "51.txt"),
        Sura(
            snameAr: "الطور",
            nameEn: "At-Tur",
            numberOfVerses: "49",
            fileName: "52.txt"),
        Sura(
            snameAr: "النجم",
            nameEn: "An-Najm",
            numberOfVerses: "62",
            fileName: "53.txt"),
        Sura(
            snameAr: "القمر",
            nameEn: "Al-Qamar",
            numberOfVerses: "55",
            fileName: "54.txt"),
        Sura(
            snameAr: "الرحمن",
            nameEn: "Ar-Rahman",
            numberOfVerses: "78",
            fileName: "55.txt"),
        Sura(
            snameAr: "الواقعة",
            nameEn: "Al-Waqi'a",
            numberOfVerses: "96",
            fileName: "56.txt"),
        Sura(
            snameAr: "الحديد",
            nameEn: "Al-Hadid",
            numberOfVerses: "29",
            fileName: "57.txt"),
        Sura(
            snameAr: "المجادلة",
            nameEn: "Al-Mujadila",
            numberOfVerses: "22",
            fileName: "58.txt"),
        Sura(
            snameAr: "الحشر",
            nameEn: "Al-Hashr",
            numberOfVerses: "24",
            fileName: "59.txt"),
        Sura(
            snameAr: "الممتحنة",
            nameEn: "Al-Mumtahina",
            numberOfVerses: "13",
            fileName: "60.txt"),
        Sura(
            snameAr: "الصف",
            nameEn: "As-Saff",
            numberOfVerses: "14",
            fileName: "61.txt"),
        Sura(
            snameAr: "الجمعة",
            nameEn: "Al-Jumu'a",
            numberOfVerses: "11",
            fileName: "62.txt"),
        Sura(
            snameAr: "المنافقون",
            nameEn: "Al-Munafiqun",
            numberOfVerses: "11",
            fileName: "63.txt"),
        Sura(
            snameAr: "التغابن",
            nameEn: "At-Taghabun",
            numberOfVerses: "18",
            fileName: "64.txt"),
        Sura(
            snameAr: "الطلاق",
            nameEn: "At-Talaq",
            numberOfVerses: "12",
            fileName: "65.txt"),
        Sura(
            snameAr: "التحريم",
            nameEn: "At-Tahrim",
            numberOfVerses: "12",
            fileName: "66.txt"),
        Sura(
            snameAr: "الملك",
            nameEn: "Al-Mulk",
            numberOfVerses: "30",
            fileName: "67.txt"),
        Sura(
            snameAr: "القلم",
            nameEn: "Al-Qalam",
            numberOfVerses: "52",
            fileName: "68.txt"),
        Sura(
            snameAr: "الحاقة",
            nameEn: "Al-Haqqah",
            numberOfVerses: "52",
            fileName: "69.txt"),
        Sura(
            snameAr: "المعارج",
            nameEn: "Al-Ma'arij",
            numberOfVerses: "44",
            fileName: "70.txt"),
        Sura(
            snameAr: "نوح",
            nameEn: "Nuh",
            numberOfVerses: "28",
            fileName: "71.txt"),
        Sura(
            snameAr: "الجن",
            nameEn: "Al-Jinn",
            numberOfVerses: "28",
            fileName: "72.txt"),
        Sura(
            snameAr: "المزّمّل",
            nameEn: "Al-Muzzammil",
            numberOfVerses: "20",
            fileName: "73.txt"),
        Sura(
            snameAr: "المدّثر",
            nameEn: "Al-Muddathir",
            numberOfVerses: "56",
            fileName: "74.txt"),
        Sura(
            snameAr: "القيامة",
            nameEn: "Al-Qiyamah",
            numberOfVerses: "40",
            fileName: "75.txt"),
        Sura(
            snameAr: "الإنسان",
            nameEn: "Al-Insan",
            numberOfVerses: "31",
            fileName: "76.txt"),
        Sura(
            snameAr: "المرسلات",
            nameEn: "Al-Mursalat",
            numberOfVerses: "50",
            fileName: "77.txt"),
        Sura(
            snameAr: "النبأ",
            nameEn: "An-Naba'",
            numberOfVerses: "40",
            fileName: "78.txt"),
        Sura(
            snameAr: "النازعات",
            nameEn: "An-Nazi'at",
            numberOfVerses: "46",
            fileName: "79.txt"),
        Sura(
            snameAr: "عبس",
            nameEn: "Abasa",
            numberOfVerses: "42",
            fileName: "80.txt"),
        Sura(
            snameAr: "التكوير",
            nameEn: "At-Takwir",
            numberOfVerses: "29",
            fileName: "81.txt"),
        Sura(
            snameAr: "الإنفطار",
            nameEn: "Al-Infitar",
            numberOfVerses: "19",
            fileName: "82.txt"),
        Sura(
            snameAr: "المطفّفين",
            nameEn: "Al-Mutaffifin",
            numberOfVerses: "36",
            fileName: "83.txt"),
        Sura(
            snameAr: "الإنشقاق",
            nameEn: "Al-Inshiqaq",
            numberOfVerses: "25",
            fileName: "84.txt"),
        Sura(
            snameAr: "البروج",
            nameEn: "Al-Buruj",
            numberOfVerses: "22",
            fileName: "85.txt"),
        Sura(
            snameAr: "الطارق",
            nameEn: "At-Tariq",
            numberOfVerses: "17",
            fileName: "86.txt"),
        Sura(
            snameAr: "الأعلى",
            nameEn: "Al-A'la",
            numberOfVerses: "19",
            fileName: "87.txt"),
        Sura(
            snameAr: "الغاشية",
            nameEn: "Al-Ghashiyah",
            numberOfVerses: "26",
            fileName: "88.txt"),
        Sura(
            snameAr: "الفجر",
            nameEn: "Al-Fajr",
            numberOfVerses: "30",
            fileName: "89.txt"),
        Sura(
            snameAr: "البلد",
            nameEn: "Al-Balad",
            numberOfVerses: "15",
            fileName: "90.txt"),
        Sura(
            snameAr: "الشمس",
            nameEn: "Ash-Shams",
            numberOfVerses: "15",
            fileName: "91.txt"),
        Sura(
            snameAr: "الليل",
            nameEn: "Al-Lail",
            numberOfVerses: "21",
            fileName: "92.txt"),
        Sura(
            snameAr: "الضحى",
            nameEn: "Ad-Duha",
            numberOfVerses: "11",
            fileName: "93.txt"),
        Sura(
            snameAr: "الشرح",
            nameEn: "Ash-Sharh",
            numberOfVerses: "8",
            fileName: "94.txt"),
        Sura(
            snameAr: "التين",
            nameEn: "At-Tin",
            numberOfVerses: "8",
            fileName: "95.txt"),
        Sura(
            snameAr: "العلق",
            nameEn: "Al-Alaq",
            numberOfVerses: "19",
            fileName: "96.txt"),
        Sura(
            snameAr: "القدر",
            nameEn: "Al-Qadr",
            numberOfVerses: "5",
            fileName: "97.txt"),
        Sura(
            snameAr: "البينة",
            nameEn: "Al-Bayyina",
            numberOfVerses: "8",
            fileName: "98.txt"),
        Sura(
            snameAr: "الزلزلة",
            nameEn: "Az-Zalzalah",
            numberOfVerses: "8",
            fileName: "99.txt"),
        Sura(
            snameAr: "العاديات",
            nameEn: "Al-Adiyat",
            numberOfVerses: "11",
            fileName: "100.txt"),
        Sura(
            snameAr: "القارعة",
            nameEn: "Al-Qari'a",
            numberOfVerses: "11",
            fileName: "101.txt"),
        Sura(
            snameAr: "التكاثر",
            nameEn: "At-Takathur",
            numberOfVerses: "8",
            fileName: "102.txt"),
        Sura(
            snameAr: "العصر",
            nameEn: "Al-Asr",
            numberOfVerses: "3",
            fileName: "103.txt"),
        Sura(
            snameAr: "الهمزة",
            nameEn: "Al-Humazah",
            numberOfVerses: "9",
            fileName: "104.txt"),
        Sura(
            snameAr: "الفيل",
            nameEn: "Al-Fil",
            numberOfVerses: "5",
            fileName: "105.txt"),
        Sura(
            snameAr: "قريش",
            nameEn: "Quraysh",
            numberOfVerses: "4",
            fileName: "106.txt"),
        Sura(
            snameAr: "الماعون",
            nameEn: "Al-Ma'un",
            numberOfVerses: "7",
            fileName: "107.txt"),
        Sura(
            snameAr: "الكوثر",
            nameEn: "Al-Kawthar",
            numberOfVerses: "3",
            fileName: "108.txt"),
        Sura(
            snameAr: "الكافرون",
            nameEn: "Al-Kafirun",
            numberOfVerses: "6",
            fileName: "109.txt"),
        Sura(
            snameAr: "النصر",
            nameEn: "An-Nasr",
            numberOfVerses: "3",
            fileName: "110.txt"),
        Sura(
            snameAr: "المسد",
            nameEn: "Al-Masad",
            numberOfVerses: "5",
            fileName: "111.txt"),
        Sura(
            snameAr: "الإخلاص",
            nameEn: "Al-Ikhlas",
            numberOfVerses: "4",
            fileName: "112.txt"),
        Sura(
            snameAr: "الفلق",
            nameEn: "Al-Falaq",
            numberOfVerses: "5",
            fileName: "113.txt"),
        Sura(
            snameAr: "الناس",
            nameEn: "An-Nas",
            numberOfVerses: "6",
            fileName: "114.txt"),
      ];
}
