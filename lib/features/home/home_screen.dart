import 'package:flt101x_asm1_haidnfx15100/model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Widget/gridViewShowItem.dart';
import '../mock_data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() {
    return new _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: ListView(
          children: [
            Image.network(
              "https://img.upanh.tv/2022/08/02/banner.png",
              fit: BoxFit.fill,
            ),
            GridViewShowItem(
              listShow: listProducts,
              shrinkWrap: true,
              scrollPhysics: NeverScrollableScrollPhysics(),
            )
          ],
        ));
  }
}
