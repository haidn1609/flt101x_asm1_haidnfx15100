import 'package:flt101x_asm1_haidnfx15100/features/store/base_product_category_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './home/home_screen.dart';

class FreshCarHomeScreen extends StatefulWidget {
  @override
  _FreshCarHomeScreenState createState() {
    return new _FreshCarHomeScreenState();
  }
}

class _FreshCarHomeScreenState extends State<FreshCarHomeScreen> {
  CupertinoTabController _tabController = CupertinoTabController();
  List<Widget>? listTab;
  late List<BottomNavigationBarItem> listBNBIs;
  int oldTab = 0;

  @override
  void initState() {
    super.initState();
    listTab = [
      CupertinoTabView(
        builder: (context)=>HomeScreen(),
      ),
      CupertinoTabView(
        builder: (context)=>StoreScreen(),
      ),
    ];
    listBNBIs = [
      BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "Home"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.store,
          ),
          label: "Store"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      backgroundColor: Colors.grey.shade100,
      controller: _tabController,
      tabBar: CupertinoTabBar(
        items: listBNBIs,
        backgroundColor: Colors.grey.shade100,
        activeColor: Colors.blueAccent.shade700,
        inactiveColor: Colors.black,
      ),
      tabBuilder: (context, index) {
        return listTab![_tabController.index];
      },
    );
  }
}
