import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/Features/home/presenation/views/home_View.dart';
import 'package:bookly/Features/splash/presentation/views/widgets/sliding_Text.dart';
import 'package:bookly/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 6),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();
  }
  void navigateToHome() {
     Future.delayed(const Duration(seconds: 2), () {
      Get.to(
        () =>const HomeView(),
        transition: Transition.fade,
        duration: KTranstionDuration,
      );
    });
  }
}
