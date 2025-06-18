import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:portfolio/responsive/responsive.dart';
import 'package:portfolio/view/mainscreen/mainscreen_controller.dart';
import 'package:portfolio/widget/app_bar.dart';
import 'package:portfolio/widget/app_bottom.dart';
import 'package:portfolio/widget/backdrop_menu_widget.dart';
import 'package:portfolio/widget/boxline_widget.dart';
import 'package:portfolio/widget/button_widget.dart';
import 'package:portfolio/widget/dotbox_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web/web.dart' as html;

class ContactScreen extends GetView<MainScreenController> {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: CustomScrollView(
        slivers: [
          AppBarWidget(),
          if (Responsive.isMobile(context))
            SliverToBoxAdapter(child: BackDropMenuWidget()),
          SliverFillRemaining(
            hasScrollBody: true,
            child: ListView(
              children: [
                _buildBanner(context),
                _buildInfoSection(context),
                const SizedBox(height: 20),
                _buildContactNow(context),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(
              color: Theme.of(context).colorScheme.tertiary,
              height: 50,
            ),
          ),
          SliverToBoxAdapter(child: BottomApp()),
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
                  text: 'contacts'.tr,
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
            'Contact whenever'.tr,
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
      clipBehavior: Clip.none,
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
                            color: Theme.of(context).colorScheme.surface,
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
                                color: Theme.of(context).colorScheme.surface,
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
                const SizedBox(height: 30),
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
                            text: 'contact-now'.tr,
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
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContactNow(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
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
            child: Form(
              key: controller.formKey,
              child: Container(
                color: Theme.of(context).colorScheme.surface,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: _buildCustomTextField(
                            context,
                            'Name',
                            controller.nameTextController,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _buildCustomTextField(
                            context,
                            'Email',
                            controller.emailTextController,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    _buildCustomTextField(
                      context,
                      'Title',
                      controller.titleTextController,
                    ),
                    const SizedBox(height: 10),
                    _buildCustomTextField(
                      context,
                      'Message',
                      controller.messageTextController,
                      isMultiple: true,
                    ),
                    const SizedBox(height: 10),
                    ButtonWidget(
                      onPressed: () async {
                        // if (controller.formKey.currentState?.validate() ==
                        //     false) {
                        //   return;
                        // }

                        String name = controller.nameTextController.text;
                        String email = controller.emailTextController.text;
                        String title = controller.titleTextController.text;
                        String message = controller.messageTextController.text;

                        final String mailtoLink =
                            Uri(
                              scheme: 'mailto',
                              path: 'chingsong15@gmail.com',
                              query: Uri.encodeFull(
                                'subject=$title&body=From: $name <$email>\n\n$message',
                              ),
                            ).toString();

                        if (kIsWeb) {
                          html.window.open(mailtoLink, '_self');
                        } else {
                          if (await canLaunchUrl(Uri.parse(mailtoLink))) {
                            await launchUrl(Uri.parse(mailtoLink));
                          } else {
                            debugPrint('Could not launch mail client');
                          }
                        }
                      },

                      title: 'Send'.tr,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCustomTextField(
    BuildContext context,
    String hintText,
    TextEditingController controller, {
    bool isMultiple = false,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: hintText.tr,
        hintStyle: TextStyle(
          fontFamily:
              Get.locale == Locale('km') ? 'KhmerFontDesc' : 'EnglishFont',
          color: Theme.of(context).colorScheme.secondary,
          fontSize: 14,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
        ),
        isDense: true,
      ),
      style: TextStyle(
        fontFamily:
            Get.locale == Locale('km') ? 'KhmerFontDesc' : 'EnglishFont',
        color: Theme.of(context).colorScheme.tertiary,
        fontSize: 14,
      ),
      maxLines: isMultiple ? 5 : 1,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Required field!';
        }

        return null;
      },
    );
  }
}
