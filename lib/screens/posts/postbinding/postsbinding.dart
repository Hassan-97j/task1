import 'package:get/get.dart';
import 'package:task1/screens/posts/postcontrller/postcontroller.dart';

class PostBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostController>((() => PostController()));
  }
}