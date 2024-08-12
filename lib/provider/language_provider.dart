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
}
