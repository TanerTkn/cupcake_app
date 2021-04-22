import 'package:cupcake_app/core/extension/extension.dart';
import 'package:cupcake_app/utilities/color_constant.dart';
import 'package:cupcake_app/view/pages/home/home_view.dart';
import 'package:cupcake_app/widgets/bottom_item.dart';
import 'package:flutter/material.dart';

class PageControllerView extends StatefulWidget {
  @override
  _PageControllerViewState createState() => _PageControllerViewState();
}

class _PageControllerViewState extends State<PageControllerView> {
  int currentIndex = 0;
  final pages = [
    HomeView(),
    HomeView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: Container(
          height: context.sizeH(0.1),
          width: context.sizeW(1),
          child: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BottomItem(
                  icon: Icons.home_filled,
                  isSelected: currentIndex == 0,
                  onTap: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                ),
                BottomItem(
                  icon: Icons.star_border_rounded,
                  isSelected: currentIndex == 1,
                  onTap: () {
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: ColorConstants.mainColor,
          onPressed: () {},
        ));
  }
}
