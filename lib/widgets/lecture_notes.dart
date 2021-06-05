import 'package:flutter/material.dart';

class LectureNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Text('$index');
      },
    );
  }
}
