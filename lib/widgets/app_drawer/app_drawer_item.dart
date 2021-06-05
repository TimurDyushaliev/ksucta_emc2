import 'package:emc/style/text_styles.dart';
import 'package:flutter/material.dart';

class AppDrawerItem extends StatelessWidget {
  final Function onTap;
  final String text;
  final bool isItemSelected;
  AppDrawerItem({this.onTap, this.text = '', this.isItemSelected = false});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: isItemSelected
            ? TextStyles.drawerSelectedItemTextStyle
            : TextStyles.drawerItemTextStyle,
      ),
    );
  }
}
