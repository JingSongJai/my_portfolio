import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:portfolio/responsive/responsive.dart';
import 'package:portfolio/view/mainscreen/mainscreen_controller.dart';
import 'package:portfolio/widget/menu_widget.dart';

class AppBarWidget extends GetView<MainScreenController> {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/icon/svg/Profile.svg'),
              const SizedBox(width: 10),
              Text(
                'Taing ChingSong'.tr,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontSize: 16,
                  fontFamily:
                      Get.locale == Locale('km') ? 'KhmerFont' : 'EnglishFont',
                ),
              ),
            ],
          ),
        ],
      ),
      actions:
          Responsive.isMobile(context)
              ? [
                InkWell(
                  onTap: () {
                    controller.showMenu.value = !controller.showMenu.value;
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Obx(() {
                      return controller.showMenu.value
                          ? SvgPicture.asset(
                            'assets/icon/svg/Cancel.svg',
                            width: 15,
                          )
                          : SvgPicture.asset(
                            'assets/icon/svg/Menu.svg',
                            width: 15,
                          );
                    }),
                  ),
                ),
                const SizedBox(width: 20),
              ]
              : [
                ...List.generate(
                  controller.menus.length,
                  (index) => MenuWidget(index, controller.menus[index]),
                ),
                Obx(() {
                  return DropdownButton(
                    value: controller.selectedLanguage.value,
                    items: [
                      DropdownMenuItem(
                        value: 'EN',
                        child: Text(
                          'EN'.tr,
                          style: TextStyle(
                            fontFamily:
                                Get.locale == Locale('km')
                                    ? 'KhmerFont'
                                    : 'EnglishFont',
                          ),
                        ),
                      ),
                      DropdownMenuItem(
                        value: 'KM',
                        child: Text(
                          'KM'.tr,
                          style: TextStyle(
                            fontFamily:
                                Get.locale == Locale('km')
                                    ? 'KhmerFont'
                                    : 'EnglishFont',
                          ),
                        ),
                      ),
                    ],
                    onChanged: controller.switchLanguage,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    underline: SizedBox(),
                    focusColor: Theme.of(context).colorScheme.surface,
                    dropdownColor: Theme.of(context).colorScheme.surface,
                  );
                }),
                const SizedBox(width: 16),
              ],
    );
  }
}
