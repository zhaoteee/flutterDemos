import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:provide/provide.dart';
import './shop/provide/counter.dart';
import './shop/provide/child_category.dart';

void main() {
  var counter = Counter(1);
  var childCategory = ChildCategory();
  var providers = Providers();
  providers
    ..provide(Provider<Counter>.value(counter))
    ..provide(Provider<ChildCategory>.value(childCategory));
  runApp(ProviderNode(child: MyApp(), providers: providers));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Demo',
      home: HomePage(),
    );
  }
}

