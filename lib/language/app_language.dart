import 'package:get/get.dart';
import 'package:portfolio/language/en.dart';
import 'package:portfolio/language/km.dart';

class AppLanguage extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'km': km, 'en': en};
}
