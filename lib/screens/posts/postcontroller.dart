// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:http/http.dart' show get;
import 'package:task1/config/urls.dart';
import 'package:task1/models/postsmodel.dart';
import 'package:task1/models/usermodel.dart';

class PostController extends GetxController {
  // fetch
  var myposturl = Config.baseurl + Config.posturl;
  var myuserurl = Config.baseurl + Config.userurl;
  List postModels = <Posts>[];
  List userModels = <Users>[];
  var isloading = true;
  @override
  void onInit() {
    getPosts();
    getUsers();
    super.onInit();
  }

  Future<void> getPosts() async {
    final response = await get(Uri.parse(myposturl));
    print("HttpStatus: waiting");

    switch (response.statusCode) {
      case HttpStatus.ok:
        
        print("HttpStatus: OK");
        final jsonBody = jsonDecode(response.body);
        if (jsonBody is List) {
          postModels =
              jsonBody.map((e) => Posts.fromJson(e)).toList().cast<Posts>();
        }
        break;
      default:
    }

    update(['textId']); //GetX için
  }

  Future<void> getUsers() async {
    final response = await get(Uri.parse(myuserurl));
    print("HttpStatus: waiting");

    switch (response.statusCode) {
      case HttpStatus.ok:
        print("HttpStatus: OK");
        final jsonBody = jsonDecode(response.body);
        if (jsonBody is List) {
          userModels =
              jsonBody.map((e) => Users.fromJson(e)).toList().cast<Users>();
        }
        break;
      default:
    }

    update(['textId']); //GetX için
  }

  @override
  void onClose() {
    print("onClose");
    super.onClose();
  }
}
