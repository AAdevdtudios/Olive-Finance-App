import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olivefinance/app/data/OnboardingItems.dart';

class OnboardingController extends GetxController {
  final List<OnboardingItem> listItems = [
    OnboardingItem(
      "Manage and Secure your cards",
      "assets/svg/Save-cards-wallet.svg",
      "You can save your existing cards securely in the app, for making transfers and managing your cards",
    ),
    OnboardingItem("Card Issuing", "assets/svg/Issue-card.svg", "description"),
    OnboardingItem("Wallet Save", "assets/svg/Save-wallet.svg", "description"),
  ].obs;

  //Control Items
  RxInt steps = 1.obs;
  PageController pageController = PageController();

  changeVal(val) {
    steps.value = val;
  }
}
