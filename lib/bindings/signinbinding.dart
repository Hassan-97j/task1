import 'package:get/get.dart';
import 'package:task1/screens/posts/postcontroller.dart';
import 'package:task1/screens/splash/splashcontroller.dart';

class SignInBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>((() => SplashController()));
    Get.put<PostController>(PostController());
  }
}
