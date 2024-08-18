// import 'package:flutter/material.dart';

// class DiseaseProvider extends ChangeNotifier {
//   bool _isEnglish = true;

//   bool get isEnglish => _isEnglish;

//   void toggleLanguage() {
//     _isEnglish = !_isEnglish;
//     notifyListeners();
//   }

//   // Disease details
//   List<Map<String, String>> get riceDiseases => _isEnglish ? riceDiseasesEn : riceDiseasesUr;
//   List<Map<String, String>> get cottonDiseases => _isEnglish ? cottonDiseasesEn : cottonDiseasesUr;
//   List<Map<String, String>> get wheatDiseases => _isEnglish ? wheatDiseasesEn : wheatDiseasesUr;
//   List<Map<String, String>> get sugarcaneDiseases => _isEnglish ? sugarcaneDiseasesEn : sugarcaneDiseasesUr;

//   final List<Map<String, String>> riceDiseasesEn = [
//     {
//       'name': 'Bacterial Blight',
//       'description': 'Bacterial blight of rice, caused by Xanthomonas oryzae, severely reduces yields by damaging leaves.',
//       'cure': 'Copper oxychloride, Copper sulfate, Streptomycin sulfate, Kasugamycin, Oxolinic acid',
//       'pesticides': 'Bactrinashak, Kasumin, Strepto Plus, Cuproxat, Blitox'
//     },
//     {
//       'name': 'Blast',
//       'description': 'Blast disease in rice, caused by the fungus Magnaporthe oryzae, leads to lesions on leaves, stems, and panicles.',
//       'cure': 'Tricyclazole, isoprothiolane, carbendazim',
//       'pesticides': 'Nativo, Tilt, Beam, Score, Folicur'
//     },
//     // Add other rice diseases similarly...
//   ];

//   final List<Map<String, String>> riceDiseasesUr = [
//     {
//       'name': 'بیکٹیریل بلائٹ',
//       'description': 'چاول کا بیکٹیریل بلائٹ، جس کی وجہ سے Xanthomonas oryzae ہوتا ہے، پتیوں کو نقصان پہنچا کر پیداوار کو شدید کم کرتا ہے۔',
//       'cure': 'کاپر آکسی کلورائڈ، کاپر سلفیٹ، سٹریپٹومائسین سلفیٹ، کاسوگامیسین، آکسولینک ایسڈ',
//       'pesticides': 'بیکٹریناشک، کاسو مین، سٹریپٹو پلس، کپروکسٹ، بلیٹکس'
//     },
//     {
//       'name': 'بلاسٹ',
//       'description': 'چاول میں بلاسٹ بیماری، جو کہ فنگس Magnaporthe oryzae کی وجہ سے ہوتی ہے، پتیوں، تنوں اور کانوں پر زخم بناتی ہے۔',
//       'cure': 'ٹریسائیکلازول، آئسروپتھیولین، کاربینڈازیم',
//       'pesticides': 'نیٹیوو، ٹلٹ، بیم، سکور، فولیکر'
//     },
//     // Add other rice diseases similarly...
//   ];

//   // Add similar structures for cotton, wheat, and sugarcane diseases

//   final List<Map<String, String>> cottonDiseasesEn = [
//     // Cotton diseases in English
//   ];

//   final List<Map<String, String>> cottonDiseasesUr = [
//     // Cotton diseases in Urdu
//   ];

//   final List<Map<String, String>> wheatDiseasesEn = [
//     // Wheat diseases in English
//   ];

//   final List<Map<String, String>> wheatDiseasesUr = [
//     // Wheat diseases in Urdu
//   ];

//   final List<Map<String, String>> sugarcaneDiseasesEn = [
//     // Sugarcane diseases in English
//   ];

//   final List<Map<String, String>> sugarcaneDiseasesUr = [
//     // Sugarcane diseases in Urdu
//   ];

//   // Add methods to get details for specific diseases if needed
// }
