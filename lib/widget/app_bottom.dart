import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:portfolio/responsive/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomApp extends StatelessWidget {
  const BottomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: Responsive.isMobile(context) ? 0.9 : 0.7,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icon/svg/Profile.svg',
                          width: 15,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'chingsong15@gmail.com',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Front-end and cross-platform developer.'.tr,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary,
                        fontSize: 12,
                        fontFamily:
                            Get.locale == Locale('km')
                                ? 'KhmerFontDesc'
                                : 'EnglishFont',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Media'.tr,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary,
                        fontSize: 14,
                        fontFamily:
                            Get.locale == Locale('km')
                                ? 'KhmerFontDesc'
                                : 'EnglishFont',
                      ),
                      textAlign: TextAlign.end,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
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
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            '© Copyright 2025. Made by ChingSong'.tr,
            style: TextStyle(
              fontSize: 10,
              color: Theme.of(context).colorScheme.secondary,
              fontFamily:
                  Get.locale == Locale('km') ? 'KhmerFontDesc' : 'EnglishFont',
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
