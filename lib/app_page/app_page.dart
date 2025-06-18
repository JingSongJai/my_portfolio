import 'package:get/get.dart';
import 'package:portfolio/app_page/app_route.dart';
import 'package:portfolio/view/aboutscreen/about_screen.dart';
import 'package:portfolio/view/contact/contact_screen.dart';
import 'package:portfolio/view/mainscreen/main_screen.dart';
import 'package:portfolio/view/workscreen/work_screen.dart';

class AppPage {
  AppPage._();

  static List<GetPage> pages = [
    GetPage(name: AppRoute.home, page: () => MainScreen()),
    GetPage(name: AppRoute.work, page: () => WorkScreen()),
    GetPage(name: AppRoute.about, page: () => AboutScreen()),
    GetPage(name: AppRoute.contact, page: () => ContactScreen()),
  ];
}
