import 'package:emc/constants/pdf_files_paths.dart';
import 'package:emc/widgets/app_drawer/app_drawer.dart';
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
        brightness: Brightness.dark,
      ),
      drawer: AppDrawer(pageController: pageController),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: List.generate(
          5,
          (index) {
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
      ),
    );
  }
}
