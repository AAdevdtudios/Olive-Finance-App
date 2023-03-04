import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../components/DownBtn.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => SafeArea(
        child: Column(
          children: [
            const Center(
              child: FlutterLogo(
                size: 100,
              ),
            ),
            Expanded(
              flex: 5,
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: controller.listItems.length,
                controller: controller.pageController,
                onPageChanged: (value) => controller.steps.value = value,
                itemBuilder: (context, index) => Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    SvgPicture.asset(
                      controller.listItems[index].img,
                      height: 400,
                    ),
                    Text(controller.listItems[index].name),
                    Text(controller.listItems[index].description),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: DownBtn(
                btnNext: () {},
                btnSkip: () {},
                steps: controller.steps.value + 1,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
