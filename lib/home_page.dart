import 'package:flutter/material.dart';
import 'test_app.dart';
import 'shop_app.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var routeLists = routers.keys.toList();
    return Scaffold(
      body: MaterialApp(
        title: 'list',
        home: ListView.builder(
          itemBuilder: (context, index) {
            return new InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(routeLists[index]);
              },
              child: Card(
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  child: new Text(routerName[index]),
                ),
              ),
            );
          },
          itemCount: routers.length,
        ),
        routes: routers,
      )
    );
  }
}

const routerName = [
  "测试app",
  "商城app"
];

Map<String, WidgetBuilder> routers = {
  "app/test": (context) {
    return TestApp();
  },
  "app/shop": (context) {
    return ShopApp();
  },
};