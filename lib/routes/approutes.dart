import 'package:get/get.dart';
import 'package:task1/routes/pages.dart';
import 'package:task1/screens/login/loginview.dart';
import 'package:task1/screens/posts/postviews/postview.dart';
import 'package:task1/screens/splash/splashview.dart';

appRoutes() => [
      //splash
      GetPage(
        name: PagesNames.splashscreen,
        page: () => SplashView(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),

      //  sign in screen
      GetPage(
        name: PagesNames.signinscreen,
        page: () => SignInView(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      //home screen
      GetPage(
        name: PagesNames.homescreen,
        page: () => const HomeView(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(
          milliseconds: 500,
        ),
      ),
      //detail screen
      // GetPage(
      //   name: PagesNames.detailscreen,
      //   page: () => MyDetailView(),
      //   middlewares: [MyMiddelware()],
      //   transition: Transition.leftToRightWithFade,
      //   transitionDuration: const Duration(milliseconds: 500),
      // ),

      // my account screen
      // GetPage(
      //   name: PagesNames.myaccountscreen,
      //   page: () => MyAccountView(),
      //   middlewares: [MyMiddelware()],
      //   transition: Transition.leftToRightWithFade,
      //   transitionDuration: const Duration(milliseconds: 500),
      // ),
    ];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    // ignore: avoid_print
    print(page?.name);
    return super.onPageCalled(page);
  }
}
