import 'package:flt101x_asm1_haidnfx15100/Widget/gridViewShowItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../mock_data.dart';

class StoreScreen extends StatefulWidget {
  @override
  _StoreScreenState createState() {
    return new _StoreScreenState();
  }
}

class _StoreScreenState extends State<StoreScreen>
    with TickerProviderStateMixin {
  void onClickTab(String category) {}

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              new TabBar(
                indicatorWeight: 10,
                indicatorColor: CupertinoColors.systemBlue,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                tabs: [
                  new Tab(
                      child: Center(
                    child: Text(
                      "Rau củ quả",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
                  new Tab(
                      child: Center(
                    child: Text("Thịt cá",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  )),
                  new Tab(
                      child: Center(
                    child: Text("Đồ gia dụng",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  )),
                ],
              ),
            ],
          ),
        ),
        body: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: TabBarView(
            children: [
              GridViewShowItem(
                  listShow: listProducts
                      .where((item) => item.category == 'vegetable')
                      .toList(),
                  shrinkWrap: false,
                  scrollPhysics: ScrollPhysics()),
              GridViewShowItem(
                  listShow: listProducts
                      .where((item) => item.category == 'meat')
                      .toList(),
                  shrinkWrap: false,
                  scrollPhysics: ScrollPhysics()),
              GridViewShowItem(
                  listShow: listProducts
                      .where((item) => item.category == 'appliances')
                      .toList(),
                  shrinkWrap: false,
                  scrollPhysics: ScrollPhysics()),
            ],
          ),
        ),
      ),
    );
  }
}
