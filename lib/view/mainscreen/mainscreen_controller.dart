import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/data/project.dart';
import 'package:portfolio/model/project_model.dart';
import 'package:web/web.dart' as html;

class MainScreenController extends GetxController {
  final selectedMenu = 0.obs;
  final selectedLanguage = 'EN'.obs;
  final menus = ['home', 'works', 'about-me', 'contacts'];
  final showMenu = false.obs;
  List<ProjectModel> completedProjects = [];
  List<ProjectModel> onGoingProjects = [];

  final nameTextController = TextEditingController();
  final emailTextController = TextEditingController();
  final titleTextController = TextEditingController();
  final messageTextController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  set switchMenu(int index) => selectedMenu.value = index;

  void switchLanguage(String? value) {
    if (value == 'KM'.tr) {
      Get.updateLocale(Locale('km'));
      selectedLanguage.value = 'KM';
    } else {
      Get.updateLocale(Locale('en'));
      selectedLanguage.value = 'EN';
    }
  }

  int get getSelectedMenu =>
      int.parse(html.window.sessionStorage.getItem('selectedMenu') ?? '0');

  @override
  void onInit() {
    completedProjects =
        projects.where((project) => project.isCompleted).toList();
    onGoingProjects =
        projects.where((project) => !project.isCompleted).toList();

    ever(selectedMenu, (_) {
      html.window.sessionStorage.setItem(
        'selectedMenu',
        selectedMenu.value.toString(),
      );
    });
    super.onInit();
  }
}
