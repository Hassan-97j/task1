import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/basecontroller/basecontroller.dart';
import 'package:task1/screens/posts/postcontroller.dart';
import 'package:task1/sizeconfig/sizes.dart';

// ignore: must_be_immutable
class AllPosts extends StatelessWidget with BaseController {
  AllPosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
        child: GetBuilder<PostController>(
          init: PostController(),
          id: 'textId',
          initState: (_) {},
          builder: (_) => postController.isloading
              ? postController.postModels.isEmpty
                  ? const Center(child: Text('No result'))
                  : ListView.builder(
                      itemCount: postController.postModels.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: getProportionateScreenWidth(12)),
                          child: ListTile(
                            title: Text(
                              postController.postModels[index].title,
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(22)),
                            ),
                            subtitle: Text(
                              postController.postModels[index].body,
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(14)),
                            ),
                            isThreeLine: true,
                          ),
                        );
                      },
                    )
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        ),
      ),
    );
  }
}
