import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app_page/app_route.dart';
import 'package:portfolio/responsive/responsive.dart';
import 'package:portfolio/view/mainscreen/mainscreen_controller.dart';

class MenuWidget extends GetView<MainScreenController> {
  const MenuWidget(this.index, this.title, {super.key});
  final int index;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        controller.selectedMenu.value = index;
        controller.showMenu.value = false;
        if (Responsive.isMobile(context)) {
          await Future.delayed(const Duration(milliseconds: 220));
        }
        switch (controller.selectedMenu.value) {
          case 0:
            Get.offAllNamed(AppRoute.home);
            break;
          case 1:
            Get.toNamed(AppRoute.work);
            break;
          case 2:
            Get.toNamed(AppRoute.about);
          case 3:
            Get.toNamed(AppRoute.contact);
            break;
        }
      },
      onHover: (isHover) {},
      overlayColor: WidgetStatePropertyAll(
        Theme.of(context).colorScheme.surface,
      ),
      child: Row(
        children: [
          const SizedBox(width: 20),
          Text(
            '#',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontFamily:
                  Get.locale == Locale('km') ? 'KhmerFont' : 'EnglishFont',
            ),
          ),
          Obx(() {
            controller.selectedMenu.value;
            return Text(
              title.tr,
              style: TextStyle(
                color:
                    controller.getSelectedMenu == index
                        ? Theme.of(context).colorScheme.tertiary
                        : Theme.of(context).colorScheme.secondary,
                fontFamily:
                    Get.locale == Locale('km') ? 'KhmerFont' : 'EnglishFont',
              ),
            );
          }),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
