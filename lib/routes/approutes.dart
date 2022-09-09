import 'package:get/get.dart';
import 'package:task1/bindings/postsbinding.dart';
import 'package:task1/bindings/signinbinding.dart';
import 'package:task1/bindings/splashbinding.dart';
import 'package:task1/routes/pages.dart';
import 'package:task1/screens/login/loginview.dart';
import 'package:task1/screens/posts/postviews/postview.dart';
import 'package:task1/screens/splash/splashview.dart';

appRoutes() => [
      //splash
      GetPage(
        name: PagesNames.splashscreen,
        page: () => const SplashView(),
        binding: SplashBinding(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),

      //  sign in screen
      GetPage(
        name: PagesNames.signinscreen,
        page: () => const SignInView(),
        middlewares: [MyMiddelware()],
        binding: SignInBinding(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      //home screen
      GetPage(
        name: PagesNames.homescreen,
        page: () => const HomeView(),
        binding: PostBinding(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(
          milliseconds: 500,
        ),
      ),
    ];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    // ignore: avoid_print
    print(page?.name);
    return super.onPageCalled(page);
  }
}
