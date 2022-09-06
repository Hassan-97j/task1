import 'package:get/get.dart';
import 'package:task1/screens/login/logincontroller.dart';
import 'package:task1/screens/posts/postcontroller.dart';
import 'package:task1/screens/splash/splashcontroller.dart';

class BaseController {
  SplashController splashController = Get.put(SplashController());
  SignInController signInController = Get.put(SignInController());
  PostController postController = Get.put(PostController());
}
