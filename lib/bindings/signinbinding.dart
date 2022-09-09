import 'package:get/get.dart';
import 'package:task1/screens/login/logincontroller.dart';
import 'package:task1/screens/posts/postcontroller.dart';

class SignInBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>((() => SignInController()));
    Get.put<PostController>(PostController());
  }
}
