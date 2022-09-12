import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/routes/pages.dart';
import 'package:task1/screens/posts/postviews/allposts.dart';
import 'package:task1/screens/posts/postviews/profile.dart';
import 'package:task1/sizeconfig/sizes.dart';

class HomeView extends StatelessWidget {
  static String routeName = Pages.home;
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Lorem Ipsum'),
          centerTitle: false,
          automaticallyImplyLeading: false,
          leading: const Icon(Icons.menu),
          bottom: TabBar(
            enableFeedback: false,
            automaticIndicatorColorAdjustment: false,
            indicatorColor: Get.theme.scaffoldBackgroundColor,
            indicatorPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(32)),
            labelStyle: TextStyle(
              fontSize: getProportionateScreenWidth(17),
            ),
            labelColor: Get.theme.scaffoldBackgroundColor,
            tabs: const [
              Tab(
                text: 'All Posts',
              ),
              Tab(
                text: 'Profile',
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            AllPosts(),
            Profile(),
          ],
        ),
      ),
    );
  }
}
