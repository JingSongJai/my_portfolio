import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:get/get.dart';
import 'package:portfolio/app_page/app_page.dart';
import 'package:portfolio/language/app_language.dart';
import 'package:portfolio/theme/dark.dart';
import 'package:portfolio/theme/light.dart';
import 'package:portfolio/view/mainscreen/main_screen.dart';
import 'package:portfolio/view/mainscreen/mainscreen_bindings.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme: light,
      darkTheme: dark,
      translations: AppLanguage(),
      initialBinding: MainScreenBinding(),
      getPages: AppPage.pages,
      enableLog: true,
      useInheritedMediaQuery: true,
      defaultTransition: Transition.fadeIn,
    );
  }
}
