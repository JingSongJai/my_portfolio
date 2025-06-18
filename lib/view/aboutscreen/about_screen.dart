import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/data/fun_fact.dart';
import 'package:portfolio/data/skill.dart';
import 'package:portfolio/responsive/responsive.dart';
import 'package:portfolio/widget/app_bar.dart';
import 'package:portfolio/widget/app_bottom.dart';
import 'package:portfolio/widget/backdrop_menu_widget.dart';
import 'package:portfolio/widget/boxline_widget.dart';
import 'package:portfolio/widget/dotbox_widget.dart';
import 'package:portfolio/widget/skill_widget.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: CustomScrollView(
        slivers: [
          AppBarWidget(),
          if (Responsive.isMobile(context))
            SliverToBoxAdapter(child: BackDropMenuWidget()),
          SliverList.list(
            children: [
              _buildBanner(context),
              _buildInfoSection(context),
              _buildSkillsSection(context),
              _buildFunFactsSection(context),
              Divider(
                color: Theme.of(context).colorScheme.tertiary,
                height: 50,
              ),
            ],
          ),
          SliverFillRemaining(hasScrollBody: false, child: BottomApp()),
        ],
      ),
    );
  }

  Widget _buildBanner(context) {
    return FractionallySizedBox(
      widthFactor: Responsive.isMobile(context) ? 0.9 : 0.7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: '/',
              style: TextStyle(
                fontFamily: 'EnglishFont',
                fontSize: 24,
                color: Theme.of(context).colorScheme.primary,
              ),
              children: [
                TextSpan(
                  text: 'about-me'.tr,
                  style: TextStyle(
                    fontFamily:
                        Get.locale == Locale('km')
                            ? 'KhmerFont'
                            : 'EnglishFont',
                    fontSize: 24,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Who am i?'.tr,
            style: TextStyle(
              fontSize: 12,
              color: Theme.of(context).colorScheme.secondary,
              fontFamily:
                  Get.locale == Locale('km') ? 'KhmerFontDesc' : 'EnglishFont',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoSection(context) {
    return Stack(
      children: [
        Positioned(
          top: 100,
          right: -30,
          child: BoxLineWidget(width: 100, height: 100),
        ),
        Positioned(
          top: 50,
          left: -50,
          child: DotBoxWidget(width: 90, height: 90),
        ),
        Align(
          alignment: Alignment.center,
          child: FractionallySizedBox(
            widthFactor: Responsive.isMobile(context) ? 0.9 : 0.7,
            child: Column(
              children: [
                const SizedBox(height: 40),
                Flex(
                  direction:
                      Responsive.isMobile(context)
                          ? Axis.vertical
                          : Axis.horizontal,
                  verticalDirection: VerticalDirection.up,
                  children: [
                    Responsive.isMobile(context)
                        ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello, I\'m ChingSong'.tr,
                              style: TextStyle(
                                fontSize: 12,
                                color: Theme.of(context).colorScheme.secondary,
                                fontFamily:
                                    Get.locale == Locale('km')
                                        ? 'KhmerFontDesc'
                                        : 'EnglishFont',
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'I’m a Flutter mobile developer with a strong passion for building modern, user-friendly apps. I have experience creating real-world projects using Flutter, Dart, GetX, and Figma, and I enjoy turning ideas into clean, functional mobile applications.'
                                  .tr,
                              style: TextStyle(
                                fontSize: 12,
                                color: Theme.of(context).colorScheme.secondary,
                                fontFamily:
                                    Get.locale == Locale('km')
                                        ? 'KhmerFontDesc'
                                        : 'EnglishFont',
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'My focus is on writing maintainable, scalable code and delivering responsive apps that provide smooth user experiences across both Android and iOS platforms. Whether it’s building from scratch or improving existing apps, I thrive in transforming complex problems into intuitive interfaces.'
                                  .tr,
                              style: TextStyle(
                                fontSize: 12,
                                color: Theme.of(context).colorScheme.secondary,
                                fontFamily:
                                    Get.locale == Locale('km')
                                        ? 'KhmerFontDesc'
                                        : 'EnglishFont',
                              ),
                            ),
                          ],
                        )
                        : Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello, I\'m ChingSong'.tr,
                                style: TextStyle(
                                  fontSize: 12,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontFamily:
                                      Get.locale == Locale('km')
                                          ? 'KhmerFontDesc'
                                          : 'EnglishFont',
                                ),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                'I’m a Flutter mobile developer with a strong passion for building modern, user-friendly apps. I have experience creating real-world projects using Flutter, Dart, GetX, and Figma, and I enjoy turning ideas into clean, functional mobile applications.'
                                    .tr,
                                style: TextStyle(
                                  fontSize: 12,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontFamily:
                                      Get.locale == Locale('km')
                                          ? 'KhmerFontDesc'
                                          : 'EnglishFont',
                                ),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                'My focus is on writing maintainable, scalable code and delivering responsive apps that provide smooth user experiences across both Android and iOS platforms. Whether it’s building from scratch or improving existing apps, I thrive in transforming complex problems into intuitive interfaces.'
                                    .tr,
                                style: TextStyle(
                                  fontSize: 12,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontFamily:
                                      Get.locale == Locale('km')
                                          ? 'KhmerFontDesc'
                                          : 'EnglishFont',
                                ),
                              ),
                            ],
                          ),
                        ),
                    Responsive.isMobile(context)
                        ? Center(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Image.asset(
                              'assets/image/Profile.png',
                              width: 300,
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        )
                        : Expanded(
                          child: Center(
                            child: Image.asset(
                              'assets/image/Profile.png',
                              width: 300,
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        ),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSkillsSection(context) {
    return Stack(
      children: [
        Positioned(
          top: 100,
          right: -30,
          child: BoxLineWidget(width: 100, height: 100),
        ),
        Positioned(
          top: 50,
          left: -50,
          child: DotBoxWidget(width: 90, height: 90),
        ),
        Align(
          alignment: Alignment.center,
          child: FractionallySizedBox(
            widthFactor: Responsive.isMobile(context) ? 0.9 : 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '#',
                        style: TextStyle(
                          fontFamily: 'EnglishFont',
                          fontSize: 24,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        children: [
                          TextSpan(
                            text: 'skills'.tr,
                            style: TextStyle(
                              fontFamily:
                                  Get.locale == Locale('km')
                                      ? 'KhmerFont'
                                      : 'EnglishFont',
                              fontSize: 24,
                              color: Theme.of(context).colorScheme.tertiary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      flex: 3,
                      child: Divider(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    Expanded(flex: 1, child: SizedBox()),
                  ],
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  direction: Axis.horizontal,
                  children: [
                    SkillWidget(title: 'Language'.tr, skills: language),
                    SkillWidget(title: 'Database'.tr, skills: database),
                    SkillWidget(title: 'Tool'.tr, skills: tool),
                    SkillWidget(
                      title: 'State Management'.tr,
                      skills: statemanagement,
                    ),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFunFactsSection(context) {
    return Stack(
      children: [
        Positioned(
          top: 100,
          right: -30,
          child: BoxLineWidget(width: 100, height: 100),
        ),
        Positioned(
          top: 50,
          left: -50,
          child: DotBoxWidget(width: 90, height: 90),
        ),
        Align(
          alignment: Alignment.center,
          child: FractionallySizedBox(
            widthFactor: Responsive.isMobile(context) ? 0.9 : 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '#',
                        style: TextStyle(
                          fontFamily: 'EnglishFont',
                          fontSize: 24,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        children: [
                          TextSpan(
                            text: 'my-fun-facts'.tr,
                            style: TextStyle(
                              fontFamily:
                                  Get.locale == Locale('km')
                                      ? 'KhmerFont'
                                      : 'EnglishFont',
                              fontSize: 24,
                              color: Theme.of(context).colorScheme.tertiary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      flex: 3,
                      child: Divider(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    Expanded(flex: 1, child: SizedBox()),
                  ],
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  direction: Axis.horizontal,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  runAlignment: WrapAlignment.start,
                  children:
                      funFacts
                          .map((value) => _buildFunFactBox(context, value))
                          .toList(),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFunFactBox(BuildContext context, String title) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
      ),
      child: Text(
        title.tr,
        style: TextStyle(
          fontSize: 12,
          color: Theme.of(context).colorScheme.tertiary,
          fontFamily:
              Get.locale == Locale('km') ? 'KhmerFontDesc' : 'EnglishFont',
        ),
      ),
    );
  }
}
