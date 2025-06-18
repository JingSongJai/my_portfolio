import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:portfolio/app_page/app_route.dart';
import 'package:portfolio/data/project.dart';
import 'package:portfolio/data/skill.dart';
import 'package:portfolio/responsive/responsive.dart';
import 'package:portfolio/view/mainscreen/mainscreen_controller.dart';
import 'package:portfolio/widget/app_bar.dart';
import 'package:portfolio/widget/app_bottom.dart';
import 'package:portfolio/widget/backdrop_menu_widget.dart';
import 'package:portfolio/widget/boxline_widget.dart';
import 'package:portfolio/widget/button_widget.dart';
import 'package:portfolio/widget/dotbox_widget.dart';
import 'package:portfolio/widget/project_widget.dart';
import 'package:portfolio/widget/quote_widget.dart';
import 'package:portfolio/widget/skill_widget.dart';

class MainScreen extends GetView<MainScreenController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: CustomScrollView(
          slivers: [
            AppBarWidget(),
            if (Responsive.isMobile(context))
              SliverToBoxAdapter(child: BackDropMenuWidget()),
            SliverList.list(
              children: [
                _buildTopProfile(context),
                const SizedBox(height: 60),
                _buildProjectSection(context),
                const SizedBox(height: 60),
                _buildSkillSection(context),
                const SizedBox(height: 60),
                _buildAboutMeSection(context),
                const SizedBox(height: 60),
                _buildContactSection(context),
                const SizedBox(height: 20),
                Divider(
                  color: Theme.of(context).colorScheme.tertiary,
                  height: 50,
                ),
              ],
            ),
            SliverFillRemaining(hasScrollBody: false, child: BottomApp()),
          ],
        ),
      ),
    );
  }

  Widget _buildTopProfile(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        widthFactor: Responsive.isMobile(context) ? 0.9 : 0.7,
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flex(
                direction:
                    Responsive.isMobile(context)
                        ? Axis.vertical
                        : Axis.horizontal,
                children: [
                  Responsive.isMobile(context)
                      ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'ChingSong is a '.tr,
                              children: [
                                TextSpan(
                                  text: 'front-end'.tr,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontFamily:
                                        Get.locale == Locale('km')
                                            ? 'KhmerFont'
                                            : 'EnglishFont',
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                                TextSpan(
                                  text: ' and ',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontFamily:
                                        Get.locale == Locale('km')
                                            ? 'KhmerFont'
                                            : 'EnglishFont',
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  ),
                                ),
                                TextSpan(
                                  text: 'cross-platform developer.'.tr,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontFamily:
                                        Get.locale == Locale('km')
                                            ? 'KhmerFont'
                                            : 'EnglishFont',
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ],
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily:
                                    Get.locale == Locale('km')
                                        ? 'KhmerFont'
                                        : 'EnglishFont',
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            'I craft seamless experiences across devices, blending design and logic to bring ideas to life—one pixel and line of code at a time.'
                                .tr,
                            style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).colorScheme.secondary,
                              fontFamily:
                                  Get.locale == Locale('km')
                                      ? 'KhmerFont'
                                      : 'KhmerFontDesc',
                            ),
                          ),
                        ],
                      )
                      : Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'ChingSong is a '.tr,
                                children: [
                                  TextSpan(
                                    text: 'front-end',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontFamily:
                                          Get.locale == Locale('km')
                                              ? 'KhmerFont'
                                              : 'EnglishFont',
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' and '.tr,
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontFamily:
                                          Get.locale == Locale('km')
                                              ? 'KhmerFont'
                                              : 'EnglishFont',
                                      color:
                                          Theme.of(
                                            context,
                                          ).colorScheme.tertiary,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'cross-platform developer.'.tr,
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontFamily:
                                          Get.locale == Locale('km')
                                              ? 'KhmerFont'
                                              : 'EnglishFont',
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ],
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily:
                                      Get.locale == Locale('km')
                                          ? 'KhmerFont'
                                          : 'EnglishFont',
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            Text(
                              'I craft seamless experiences across devices, blending design and logic to bring ideas to life—one pixel and line of code at a time.'
                                  .tr,
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).colorScheme.secondary,
                                fontFamily:
                                    Get.locale == Locale('km')
                                        ? 'KhmerFont'
                                        : 'EnglishFont',
                              ),
                            ),
                            const SizedBox(height: 20),
                            ButtonWidget(
                              onPressed: () {
                                controller.selectedMenu.value = 3;
                                Get.toNamed(AppRoute.contact);
                              },
                              title: 'Contact me!!'.tr,
                            ),
                          ],
                        ),
                      ),
                  Responsive.isMobile(context)
                      ? const SizedBox(height: 20)
                      : const SizedBox(width: 10),
                  Responsive.isMobile(context)
                      ? Column(
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                top: 30,
                                child: SvgPicture.asset(
                                  'assets/icon/svg/Logo.svg',
                                  width: 150,
                                ),
                              ),
                              Image.asset(
                                'assets/image/Profile.png',
                                width: 400,
                                alignment: Alignment.centerRight,
                              ),
                            ],
                          ),
                          _buildBanner(context),
                        ],
                      )
                      : Expanded(
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Positioned(
                                  top: 30,
                                  child: SvgPicture.asset(
                                    'assets/icon/svg/Logo.svg',
                                    width: 100,
                                  ),
                                ),
                                Image.asset(
                                  'assets/image/Profile.png',
                                  width: 400,
                                  alignment: Alignment.centerRight,
                                ),
                              ],
                            ),
                            _buildBanner(context),
                          ],
                        ),
                      ),
                ],
              ),
              const SizedBox(height: 60),
              QuoteWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBanner(context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.tertiary,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 10,
            height: 10,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: 'Currently working on '.tr,
                children: [
                  TextSpan(
                    text: 'Portfolio'.tr,
                    style: TextStyle(
                      fontFamily:
                          Get.locale == Locale('km')
                              ? 'KhmerFont'
                              : 'EnglishFont',
                      fontSize: 10,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                ],
                style: TextStyle(
                  fontFamily:
                      Get.locale == Locale('km') ? 'KhmerFont' : 'EnglishFont',
                  fontSize: 10,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectSection(BuildContext context) {
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
                            text: 'projects'.tr,
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
                    TextButton(
                      child: Text(
                        'View all ~~>'.tr,
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.tertiary,
                          fontFamily:
                              Get.locale == Locale('km')
                                  ? 'KhmerFont'
                                  : 'EnglishFont',
                        ),
                      ),
                      onPressed: () {
                        controller.selectedMenu.value = 1;
                        Get.toNamed(AppRoute.work);
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                MasonryGridView.builder(
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        Responsive.isWindow(context)
                            ? 4
                            : Responsive.isTablet(context)
                            ? 3
                            : 2,
                  ),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 20,
                  clipBehavior: Clip.none,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:
                      Responsive.isWindow(context)
                          ? 4
                          : Responsive.isTablet(context)
                          ? 3
                          : 2,
                  itemBuilder:
                      (context, index) =>
                          ProjectWidget(project: projects[index]),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSkillSection(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: FractionallySizedBox(
            widthFactor: Responsive.isMobile(context) ? 0.9 : 0.7,
            child: Column(
              children: [
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
                    Expanded(flex: 2, child: SizedBox()),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: SizedBox(
                          width: 300,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                top: -70,
                                right: 50,
                                child: BoxLineWidget(width: 70, height: 70),
                              ),
                              BoxLineWidget(width: 50, height: 50),
                              Positioned(
                                top: -70,
                                left: 50,
                                child: DotBoxWidget(
                                  width: 50,
                                  height: 50,
                                  space: 10,
                                ),
                              ),
                              Positioned(
                                top: 20,
                                right: 100,
                                child: DotBoxWidget(
                                  width: 50,
                                  height: 50,
                                  space: 10,
                                ),
                              ),
                              Positioned(
                                top: 50,
                                left: 50,
                                child: SvgPicture.asset(
                                  'assets/icon/svg/Logo.svg',
                                  width: 80,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: SkillWidget(
                              title: 'Language'.tr,
                              skills: language,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              children: [
                                SkillWidget(
                                  title: 'Database'.tr,
                                  skills: database,
                                ),
                                const SizedBox(height: 10),
                                SkillWidget(title: 'Tool'.tr, skills: tool),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: SkillWidget(
                              title: 'State Management'.tr,
                              skills: statemanagement,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAboutMeSection(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: FractionallySizedBox(
            widthFactor: Responsive.isMobile(context) ? 0.9 : 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                    const SizedBox(width: 10),
                    Expanded(
                      flex: 3,
                      child: Divider(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    Expanded(flex: 2, child: SizedBox()),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: Column(
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
                          const SizedBox(height: 20),
                          ButtonWidget(
                            onPressed: () {
                              controller.selectedMenu.value = 2;
                              Get.toNamed(AppRoute.about);
                            },
                            title: 'Read more ~~>'.tr,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
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
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContactSection(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: FractionallySizedBox(
            widthFactor: Responsive.isMobile(context) ? 0.9 : 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                    const SizedBox(width: 10),
                    Expanded(
                      flex: 3,
                      child: Divider(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    Expanded(flex: 2, child: SizedBox()),
                  ],
                ),
                const SizedBox(height: 30),
                Flex(
                  direction:
                      Responsive.isMobile(context)
                          ? Axis.vertical
                          : Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Responsive.isMobile(context)
                        ? Text(
                          'Hi, I\'m a Flutter mobile developer passionate about building clean and user-friendly apps. If you\'re looking for someone to bring your ideas to life with Flutter, feel free to reach out — I\'d love to connect!'
                              .tr,
                          style: TextStyle(
                            fontSize: 12,
                            color: Theme.of(context).colorScheme.secondary,
                            fontFamily:
                                Get.locale == Locale('km')
                                    ? 'KhmerFontDesc'
                                    : 'EnglishFont',
                          ),
                        )
                        : Expanded(
                          child: Text(
                            'Hi, I\'m a Flutter mobile developer passionate about building clean and user-friendly apps. If you\'re looking for someone to bring your ideas to life with Flutter, feel free to reach out — I\'d love to connect!'
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
                        ),
                    Responsive.isMobile(context)
                        ? const SizedBox(height: 10)
                        : const SizedBox(width: 10),
                    Responsive.isMobile(context)
                        ? Container(
                          width: 215,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Message me here'.tr,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Theme.of(context).colorScheme.tertiary,
                                  fontFamily:
                                      Get.locale == Locale('km')
                                          ? 'KhmerFont'
                                          : 'EnglishFont',
                                ),
                              ),
                              const SizedBox(height: 10),
                              ListTile(
                                leading: SvgPicture.asset(
                                  'assets/icon/svg/Email.svg',
                                  width: 25,
                                ),
                                title: Text(
                                  'chingsong15@gmail.com',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                contentPadding: EdgeInsets.zero,
                                minTileHeight: 20,
                              ),
                              ListTile(
                                leading: SvgPicture.asset(
                                  'assets/icon/svg/Telegram.svg',
                                  width: 25,
                                ),
                                title: Text(
                                  '015 528 384',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                contentPadding: EdgeInsets.zero,
                                minTileHeight: 20,
                              ),
                            ],
                          ),
                        )
                        : Expanded(
                          child: Center(
                            child: Container(
                              width: 215,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Message me here'.tr,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color:
                                          Theme.of(
                                            context,
                                          ).colorScheme.tertiary,
                                      fontFamily:
                                          Get.locale == Locale('km')
                                              ? 'KhmerFont'
                                              : 'EnglishFont',
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  ListTile(
                                    leading: SvgPicture.asset(
                                      'assets/icon/svg/Email.svg',
                                      width: 25,
                                    ),
                                    title: Text(
                                      'chingsong15@gmail.com',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.secondary,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.zero,
                                    minTileHeight: 20,
                                  ),
                                  ListTile(
                                    leading: SvgPicture.asset(
                                      'assets/icon/svg/Telegram.svg',
                                      width: 25,
                                    ),
                                    title: Text(
                                      '015 528 384',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.secondary,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.zero,
                                    minTileHeight: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
