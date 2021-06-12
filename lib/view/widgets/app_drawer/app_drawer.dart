import 'package:emc/constants/app_drawer_constants.dart';
import 'package:emc/controllers/app_drawer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_drawer_item.dart';

class AppDrawer extends StatelessWidget {
  final PageController pageController;

  final AppDrawerController appDrawerController =
      Get.put(AppDrawerController());

  AppDrawer({@required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: Column(
          children: [
            DrawerHeader(
                child: Image.asset(
              'assets/images/drawer_header_image2.jpg',
              fit: BoxFit.cover,
            )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    AppDrawerConstants.itemsTexts.length,
                    (index) => Obx(
                      () => AppDrawerItem(
                        text: AppDrawerConstants.itemsTexts[index],
                        onTap: () {
                          appDrawerController.selectedItem.value = index;
                          pageController.jumpToPage(index);
                          Navigator.pop(context);
                        },
                        isItemSelected:
                            appDrawerController.selectedItem.value == index,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
