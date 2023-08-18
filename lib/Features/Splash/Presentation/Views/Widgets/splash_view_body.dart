

import 'package:book_app/Features/Splash/Presentation/Views/Widgets/sliding_text.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../../../../../Core/utils/app_router.dart';
import '../../../../../Core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
    const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>with SingleTickerProviderStateMixin {

 late AnimationController animationController;
 late Animation<Offset> slidingAnimation;
 @override
  void initState() {
   super.initState();
      initSlidingAnimation();
      navigationToHome();
  }

 void navigationToHome() {
   Future.delayed(const Duration(seconds: 2),(){
      GoRouter.of(context).push(AppRouter.kHomeView);
   });
 }


  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,//make the width the largest available width
      children: [
        Image.asset(Assets.logo,fit: BoxFit.fill),
        const SizedBox(height: 6,),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

 void initSlidingAnimation() {
   animationController= AnimationController(
     vsync: this
     ,duration: const Duration(seconds: 1),
   );
   slidingAnimation=Tween<Offset>(begin:const Offset (0,2),end:Offset.zero
   ).animate(animationController);
   animationController.forward();
 }
}

