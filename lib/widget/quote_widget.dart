import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class QuoteWidget extends StatelessWidget {
  const QuoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              child: Text(
                'Coding is 10% writing code and 90% figuring out why it doesn’t work.'
                    .tr,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontFamily:
                      Get.locale == Locale('km') ? 'KhmerFont' : 'EnglishFont',
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                child: Text(
                  'Mr. Jing'.tr,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontFamily:
                        Get.locale == Locale('km')
                            ? 'KhmerFont'
                            : 'EnglishFont',
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 0,
          left: 10,
          child: Container(
            padding: const EdgeInsets.all(5),
            color: Theme.of(context).colorScheme.surface,
            child: SvgPicture.asset('assets/icon/svg/Quote.svg', width: 15),
          ),
        ),
        Positioned(
          top: 0,
          right: 10,
          child: Container(
            padding: const EdgeInsets.all(5),
            color: Theme.of(context).colorScheme.surface,
            child: SvgPicture.asset('assets/icon/svg/Quote.svg', width: 15),
          ),
        ),
      ],
    );
  }
}
