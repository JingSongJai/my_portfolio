import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:portfolio/view/mainscreen/mainscreen_controller.dart';
import 'package:portfolio/widget/menu_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class BackDropMenuWidget extends GetView<MainScreenController> {
  const BackDropMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: controller.showMenu.value ? 230 : 0,
        child:
            controller.showMenu.value
                ? ListView(
                  children: [
                    ...List.generate(
                      controller.menus.length,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MenuWidget(index, controller.menus[index]),
                      ),
                    ),
                    Obx(() {
                      return Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: DropdownButton(
                            menuWidth: 100,
                            value: controller.selectedLanguage.value,
                            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                            underline: Container(),
                            focusColor: Theme.of(context).colorScheme.surface,
                            dropdownColor:
                                Theme.of(context).colorScheme.surface,
                          ),
                        ),
                      );
                    }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap:
                              () => launchUrl(
                                Uri.parse('https://github.com/JingSongJai'),
                              ),
                          child: SvgPicture.asset(
                            'assets/icon/svg/Github.svg',
                            width: 23,
                          ),
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          onTap:
                              () => launchUrl(
                                Uri.parse(
                                  'https://www.linkedin.com/in/jing-song-a0732334b/',
                                ),
                              ),
                          child: SvgPicture.asset(
                            'assets/icon/svg/Linkedin.svg',
                            width: 23,
                          ),
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          onTap:
                              () => launchUrl(
                                Uri.parse('https://t.me/jingsongtaing'),
                              ),
                          child: SvgPicture.asset(
                            'assets/icon/svg/Telegram.svg',
                            width: 23,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Theme.of(context).colorScheme.secondary,
                      height: 20,
                    ),
                  ],
                )
                : null,
      );
    });
  }
}
