import 'package:flutter/material.dart';

import 'features/fresh_car_home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(new FreshCar());
}

class FreshCar extends StatefulWidget {
  @override
  _FreshCarState createState() {
    return new _FreshCarState();
  }
}

class _FreshCarState extends State<FreshCar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  color: Colors.black38,
                )),
          ),
          title: Text(
            "CHỢ ONLINE",
            style: TextStyle(
                color: Colors.green, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          backgroundColor: Colors.grey.shade100,
          actions: [
            Container(
              padding: EdgeInsets.only(right: 25),
              child: IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.local_grocery_store,
                    color: Colors.black38,
                  )),
            )
          ],
        ),
        drawer: Drawer(
          child: Container(
            padding: EdgeInsets.all(35),
            child: Builder(
              builder: (context) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Drawer"),
                  ElevatedButton(
                      onPressed: () {
                        print("click");
                        Navigator.of(context).pop();
                      },
                      child: Text("Close"))
                ],
              ),
            ),
          ),
        ),
        body: FreshCarHomeScreen(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
