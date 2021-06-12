import 'package:emc/constants/lection_files_paths.dart';
import 'package:emc/view/pages/lection_info_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LectureNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: LectionFilesPaths.paths.length,
      itemBuilder: (context, index) {
        final String lectionTitle = 'Лекция ${index + 1}';
        final String asset = LectionFilesPaths.paths[index];
        return InkWell(
            onTap: () {
              Get.to(() => LectionInfoPage(asset: asset, title: lectionTitle));
            },
            child: ListTile(
                title: Text(
              lectionTitle,
              style: TextStyle(fontSize: 17),
              textScaleFactor: 1,
            )));
      },
    );
  }
}
