import 'package:get/get.dart';
import 'package:task1/screens/splash/splashcontroller/splashcontroller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>((() => SplashController()));
  }
}
