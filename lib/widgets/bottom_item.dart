import 'package:cupcake_app/utilities/color_constant.dart';
import 'package:flutter/material.dart';

class BottomItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isSelected;
  final Function onTap;

  const BottomItem({Key key, this.text, this.icon, this.isSelected, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.white,
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Icon(icon, color: isSelected ? ColorConstants.mainColor : Colors.grey, size: 22),
      ),
    );
  }
}
