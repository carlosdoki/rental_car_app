import 'package:badges/badges.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:line_icons/line_icons.dart';

import '../core.dart';

class MainView extends GetView<MainController> {
  // const MainView({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [HomeView()],
      ),
      bottomNavigationBar: ValueBuilder<int>(
        initialValue: 0,
        builder: (value, updateFn) => Container(
          color: Colors.grey[200],
          child: BubbleBottomBar(
            opacity: .2,
            currentIndex: value,
            onTap: (tab) {
              controller.pageController.animateToPage(
                tab,
                duration: controller.animationDuration,
                curve: Curves.ease,
              );
              updateFn(tab);
            },
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
            elevation: 0,
            hasInk: true,
            items: <BubbleBottomBarItem>[
              BubbleBottomBarItem(
                backgroundColor: kPrimaryColor,
                icon: Icon(
                  LineIcons.home,
                  color: Colors.black54,
                ),
                activeIcon: Icon(LineIcons.home),
                title: Text('Home'),
              ),
              BubbleBottomBarItem(
                backgroundColor: kPrimaryColor,
                icon: Icon(
                  LineIcons.search,
                  color: Colors.black54,
                ),
                activeIcon: Icon(LineIcons.search),
                title: Text('Search'),
              ),
              BubbleBottomBarItem(
                backgroundColor: kPrimaryColor,
                icon: Badge(
                  padding: EdgeInsets.only(
                      top: 5.0, bottom: 5.0, right: 4.0, left: 5.0),
                  animationType: BadgeAnimationType.scale,
                  animationDuration: Duration(microseconds: 200),
                  badgeContent: Text(
                    '7',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  child: Icon(
                    LineIcons.bell,
                    color: Colors.black54,
                  ),
                ),
                activeIcon: Icon(LineIcons.bell),
                title: Text('Notification'),
              ),
              BubbleBottomBarItem(
                backgroundColor: kPrimaryColor,
                icon: Icon(
                  LineIcons.user,
                  color: Colors.black54,
                ),
                activeIcon: Icon(LineIcons.user),
                title: Text('Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
