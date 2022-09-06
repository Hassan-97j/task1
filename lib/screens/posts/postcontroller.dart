// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:task1/config/urls.dart';
import 'package:task1/models/postsmodel.dart';

class PostController extends GetxController {
  // fetch
  var myurl = Config.baseurl + Config.posturl;
  List postModels = <Posts>[];
  var isloading = true;
  @override
  void onInit() {
    fetchPostsData();
    super.onInit();
  }

  Future fetchPostsData() async {
    final response = await http.get(Uri.parse(myurl));

    if (response.statusCode == 200) {
      Posts posts = Posts.fromJson(jsonDecode(response.body));
      print(posts);
      postModels.add(
        Posts(title: posts.title, body: posts.body),
      );

      isloading = false;
      update();
    } else {
      Get.snackbar('Error Loading data!',
          'Sever responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
    }
    update();
  }

  @override
  void onClose() {
    print("onClose");
    super.onClose();
  }
}
