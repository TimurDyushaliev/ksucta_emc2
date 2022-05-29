import 'package:emc/constants/app_drawer_constants.dart';
import 'package:emc/constants/pdf_files_paths.dart';
import 'package:emc/view/widgets/app_drawer/app_drawer.dart';
import 'package:emc/view/widgets/lecture_notes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class HomePage extends StatelessWidget {
  final PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('КГУСТА'),
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      drawer: AppDrawer(pageController: pageController),
      body: PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: AppDrawerConstants.itemsTexts.length,
        controller: pageController,
        itemBuilder: (context, index) {
          if (index == AppDrawerConstants.itemsTexts.length - 1) {
            return LectureNotes();
          }
          return PDF(
            enableSwipe: true,
            swipeHorizontal: true,
            autoSpacing: false,
            pageFling: false,
            onError: (error) {
              print(error.toString());
            },
            onPageError: (page, error) {
              print('$page: ${error.toString()}');
            },
            onPageChanged: (int page, int total) {
              print('page change: $page/$total');
            },
          ).fromAsset(PdfFilesPaths.paths[index]);
        },
      ),
    );
  }
}
