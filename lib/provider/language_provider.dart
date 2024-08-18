import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  bool _isEnglish = true;

  bool get isEnglish => _isEnglish;

  void toggleLanguage() {
    _isEnglish = !_isEnglish;
    notifyListeners();
  }

  String get greeting => _isEnglish ? 'Welcome' : 'خوش آمدید';
String get rice => _isEnglish ? 'Rice Plant' : 'چاول کا پودا';

String get rice_des => _isEnglish
    ? 'Rice is a staple food in many parts of the world. It is a rich source of carbohydrates and provides essential nutrients. Rice plants belong to the grass family and are cultivated in flooded fields.'
    : 'چاول دنیا کے بہت سے حصوں میں بنیادی غذا ہے۔ یہ کاربوہائیڈریٹس کا بھرپور ذریعہ ہے اور ضروری غذائی اجزاء فراہم کرتا ہے۔ چاول کے پودے گھاس کے خاندان سے تعلق رکھتے ہیں اور انہیں سیلاب زدہ کھیتوں میں اگایا جاتا ہے۔';

  String get cotton => _isEnglish ? 'cotton Plant' : 'کپاس کا پودا';
  String get cotton_des => _isEnglish
      ? 'The cotton plant is a tropical or subtropical shrub that grows 3 to 6 feet tall.'
      : 'کپاس کا پودا ایک اشنکٹبندیی یا ذیلی ٹراپیکل جھاڑی ہے جو 3 سے 6 فٹ لمبا ہوتا ہے۔';

  String get wehat => _isEnglish ? 'wheat Plant' : 'گندم کا پودا';
  String get wheat_des => _isEnglish
      ? 'The wheat plant is a cereal grass that typically grows between 2 to 4 feet tall..'
      : 'گندم کا پودا ایک اناج کی گھاس ہے جو عام طور پر 2 سے 4 فٹ لمبا ہوتا ہے۔';

  String get sugarcane => _isEnglish ? 'Sugarcane Plant' : 'گنے کا پودا';
  String get sugarcane_des => _isEnglish
      ? 'The wheat plant is a cereal grass that typically grows between 2 to 4 feet tall..'
      : 'گندم کا پودا ایک اناج کی گھاس ہے جو عام طور پر 2 سے 4 فٹ لمبا ہوتا ہے۔';


//Disease list


  // Disease details
  List<Map<String, String>> get riceDiseases => _isEnglish ? riceDiseasesEn : riceDiseasesUr;
  List<Map<String, String>> get cottonDiseases => _isEnglish ? cottonDiseasesEn : cottonDiseasesUr;
  List<Map<String, String>> get wheatDiseases => _isEnglish ? wheatDiseasesEn : wheatDiseasesUr;
  List<Map<String, String>> get sugarcaneDiseases => _isEnglish ? sugarcaneDiseasesEn : sugarcaneDiseasesUr;

  final List<Map<String, String>> riceDiseasesEn = [
    {
      'name': 'Bacterial Blight',
      'description': 'Bacterial blight of rice, caused by Xanthomonas oryzae, severely reduces yields by damaging leaves.',
      'cure': 'Copper oxychloride, Copper sulfate, Streptomycin sulfate, Kasugamycin, Oxolinic acid',
      'pesticides': 'Bactrinashak, Kasumin, Strepto Plus, Cuproxat, Blitox',
      'image': 'assets/images/BacterialBlight.jpg',
      

    },
    {
      'name': 'Blast',
      'description': 'Blast disease in rice, caused by the fungus Magnaporthe oryzae, leads to lesions on leaves, stems, and panicles.',
      'cure': 'Tricyclazole, isoprothiolane, carbendazim',
      'pesticides': 'Nativo, Tilt, Beam, Score, Folicur',     
      'image': 'assets/images/Blast.jpg',
    },
    {
      'name': 'Brown Spot',
      'description': 'Brown spot disease in rice, caused by Bipolaris oryzae, leads to brown lesions on leaves, reducing grain quality and yield.',
      'cure': 'Propiconazole, mancozeb, azoxystrobin',
      'pesticides': 'Tilt 250 EC, Dithane M-45, Amistar Top, Score 250 EC',
      'image': 'assets/images/BrownSpot.jpg',
    },
    {
      'name': 'Tungro',
      'description': 'Tungro disease, caused by rice tungro bacilliform virus and rice tungro spherical virus, results in stunted growth, yellowing, and reduced yields.',
      'cure': 'Imidacloprid',
      'pesticides': 'Confidor, Actara',
      'image': 'assets/images/Tungro.jpg', 
    },
  ];

  final List<Map<String, String>> riceDiseasesUr = [
    {
      'name': 'بیکٹیریل بلائٹ',
      'description': 'چاول کا بیکٹیریل بلائٹ، جس کی وجہ سے Xanthomonas oryzae ہوتا ہے، پتیوں کو نقصان پہنچا کر پیداوار کو شدید کم کرتا ہے۔',
      'cure': 'کاپر آکسی کلورائڈ، کاپر سلفیٹ، سٹریپٹومائسین سلفیٹ، کاسوگامیسین، آکسولینک ایسڈ',
      'pesticides': 'بیکٹریناشک، کاسو مین، سٹریپٹو پلس، کپروکسٹ، بلیٹکس',
      'image': 'assets/images/BacterialBlight.jpg',
    },
    {
      'name': 'بلاسٹ',
      'description': 'چاول میں بلاسٹ بیماری، جو کہ فنگس Magnaporthe oryzae کی وجہ سے ہوتی ہے، پتیوں، تنوں اور کانوں پر زخم بناتی ہے۔',
      'cure': 'ٹریسائیکلازول، آئسروپتھیولین، کاربینڈازیم',
      'pesticides': 'نیٹیوو، ٹلٹ، بیم، سکور، فولیکر',
      'image': 'assets/images/Blast.jpg',
    },
    {
      'name': 'براؤن سپاٹ',
      'description': 'چاول میں براؤن سپاٹ بیماری، جو کہ Bipolaris oryzae کی وجہ سے ہوتی ہے، پتوں پر بھورے دھبے پیدا کرتی ہے، جس سے اناج کا معیار اور پیداوار کم ہوتی ہے۔',
      'cure': 'پروپیکونازول، مینکوزیب، ایزوکسسٹروبن',
      'pesticides': 'ٹلٹ 250 ای سی، دتھین ایم-45، امیسٹر ٹاپ، سکور 250 ای سی',
      'image': 'assets/images/BrownSpot.jpg',
    },
    {
      'name': 'ٹنگرو',
      'description': 'ٹنگرو بیماری، جو کہ رائس ٹنگرو بیسیلیفرم وائرس اور رائس ٹنگرو سفیریکل وائرس کی وجہ سے ہوتی ہے، پودے کی بڑھوتری کو روکنے، زردی، اور پیداوار میں کمی کا سبب بنتی ہے۔',
      'cure': 'امیڈاکلوپریڈ',
      'pesticides': 'کونفیڈور، ایکٹارا',
      'image': 'assets/images/Tungro.jpg',
    },
  ];

  final List<Map<String, String>> cottonDiseasesEn = [
    {
      'name': 'Bacterial Blight',
      'description': 'Bacterial blight in cotton, caused by Xanthomonas campestris pv. malvacearum, causes leaf spots, reduced boll formation, and plant wilting.',
      'cure': 'Copper hydroxide, copper oxychloride',
      'pesticides': 'Kocide, Blitox, Bordeaux mixture',
      'image': 'assets/images/Bacterial Blight.jpg',
    },
    {
      'name': 'Curl Virus',
      'description': 'Curl virus disease in cotton, caused by Cotton Leaf Curl Virus (CLCV), results in leaf curling, stunted growth, and reduced yields.',
      'cure': 'Imidacloprid, thiamethoxam',
      'pesticides': 'Imidacloprid, Thiamethoxam, Acetamiprid',
      'image': 'assets/images/CurlVirus.jpg',
    },
    {
      'name': 'Fusarium Wilt',
      'description': 'Fusarium wilt in cotton, caused by Fusarium oxysporum, results in yellowing, wilting, and stunted growth of plants.',
      'cure': 'Carbendazim, Thiram',
      'pesticides': 'Bavistin, Thiram, Folicur',
      'image': 'assets/images/FusariumWilt.jpg',
    },
  ];

  final List<Map<String, String>> cottonDiseasesUr = [
    {
      'name': 'بیکٹیریل بلائٹ',
      'description': 'کپاس میں بیکٹیریل بلائٹ، جو Xanthomonas campestris pv. malvacearum کی وجہ سے ہوتا ہے، پتوں پر دھبے، کپاس کی کم پیداوار، اور پودوں کی مرجھاہٹ کا سبب بنتا ہے۔',
      'cure': 'کاپر ہائیڈرو آکسائیڈ، کاپر آکسی کلورائڈ',
      'pesticides': 'کوکائڈ، بلیٹکس، بورڈو مکسچر',
      'image': 'assets/images/Bacterial Blight.jpg',
    },
    {
      'name': 'کرل وائرس',
      'description': 'کپاس میں کرل وائرس کی بیماری، جو کہ کپاس کے پتے کا کرل وائرس (CLCV) کی وجہ سے ہوتی ہے، پتوں کی کرلنگ، پودوں کی بڑھوتری کو روکنے، اور پیداوار میں کمی کا سبب بنتی ہے۔',
      'cure': 'امیڈاکلوپریڈ، تھایامیٹھوکسام',
      'pesticides': 'امیڈاکلوپریڈ، تھایامیٹھوکسام، اسیٹامپریڈ',
      'image': 'assets/images/CurlVirus.jpg',
    },
    {
      'name': 'فوزیریم ولٹ',
      'description': 'کپاس میں فوزیریم ولٹ، جو کہ Fusarium oxysporum کی وجہ سے ہوتا ہے، پودوں کی زردی، مرجھاہٹ، اور بڑھوتری میں کمی کا سبب بنتا ہے۔',
      'cure': 'کاربینڈازیم، تھیریم',
      'pesticides': 'بایوسٹن، تھیریم، فولیکر',
      'image': 'assets/images/FusariumWilt.jpg',
    },
  ];

  final List<Map<String, String>> wheatDiseasesEn = [
    {
      'name': 'Septoria',
      'description': 'Septoria disease in wheat, caused by Septoria tritici, leads to leaf spots, reduced photosynthesis, and yield loss.',
      'cure': 'Azoxystrobin, Chlorothalonil, Tebuconazole',
      'pesticides': 'Tilt, Amistar, Dithane M-45, Bravo',
      'image': 'assets/images/Septoria.jpg',
    },
    {
      'name': 'Stripe Rust',
      'description': 'Stripe rust, caused by Puccinia striiformis, is a wheat disease that causes yellow, stripe-like lesions on leaves.',
      'cure': 'Triadimefon, Tebuconazole, Propiconazole',
      'pesticides': 'Folicur, Tilt, Vardana, Opera',
      'image': 'assets/images/StripeRust.jpg',
    },
  ];

  final List<Map<String, String>> wheatDiseasesUr = [
    {
      'name': 'سیپٹوریا',
      'description': 'گندم میں سیپٹوریا کی بیماری، جو کہ Septoria tritici کی وجہ سے ہوتی ہے، پتوں پر دھبے، فوٹو سنتھیسس کی کمی، اور پیداوار میں کمی کا سبب بنتی ہے۔',
      'cure': 'ایزوکسسٹروبن، کلورو تھالونیل، ٹیبوکونازول',
      'pesticides': 'ٹلٹ، امیسٹر، دتھین ایم-45، براوو',
      'image': 'assets/images/FusariumWilt.jpg',
    },
    {
      'name': 'اسٹرائپ رسٹ',
      'description': 'اسٹرائپ رسٹ، جو کہ Puccinia striiformis کی وجہ سے ہوتی ہے، گندم کی بیماری ہے جو پتوں پر پیلی، دھاری نما زخم بناتی ہے۔',
      'cure': 'ٹریاڈیمیفون، ٹیبوکونازول، پروپیکونازول',
      'pesticides': 'فولیکر، ٹلٹ، وردانا، اوپیرا',
      'image': 'assets/images/StripeRust.jpg',
    },
  ];

  final List<Map<String, String>> sugarcaneDiseasesEn = [
    {
      'name': 'Red Rot',
      'description': 'Red rot in sugarcane, caused by the fungus Colletotrichum falcatum, leads to reddish discoloration, rotting, and reduced yield.',
      'cure': 'Carbendazim, Propiconazole, Mancozeb',
      'pesticides': 'Bavistin, Tilt, Dithane M-45',
      'image': 'assets/images/RedRot.jpg',
    },
    {
      'name': 'Smut',
      'description': 'Smut disease in sugarcane, caused by Sporisorium scitamineum, results in black whip-like structures and reduced cane quality.',
      'cure': 'Carbendazim, Thiram',
      'pesticides': 'Bavistin, Thiram',
      'image': 'assets/images/Smut.jpg',
    },
  ];

  final List<Map<String, String>> sugarcaneDiseasesUr = [
    {
      'name': 'ریڈ روٹ',
      'description': 'گنے میں ریڈ روٹ، جو کہ فنگس Colletotrichum falcatum کی وجہ سے ہوتی ہے، سرخ بد رنگی، سڑنے، اور پیداوار میں کمی کا سبب بنتی ہے۔',
      'cure': 'کاربینڈازیم، پروپیکونازول، مینکوزیب',
      'pesticides': 'بایوسٹن، ٹلٹ، دتھین ایم-45',
      'image': 'assets/images/RedRot.jpg',
    },
    {
      'name': 'سمٹ',
      'description': 'گنے میں سمٹ کی بیماری، جو کہ Sporisorium scitamineum کی وجہ سے ہوتی ہے، سیاہ کوڑے کی مانند ڈھانچے اور گنے کے معیار میں کمی کا سبب بنتی ہے۔',
      'cure': 'کاربینڈازیم، تھیریم',
      'pesticides': 'بایوسٹن، تھیریم',
      'image': 'assets/images/Smut.jpg',
    },
  ];
}
