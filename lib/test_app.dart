import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:gsy_flutter_demo/widget/my_home_page.dart';
import 'package:gsy_flutter_demo/widget/category_page.dart';

class TestApp extends StatefulWidget {
  @override
  _TestAppState createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  PageController _pageController;

  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      title: Text('首页'),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      title: Text('分类'),
    )
  ];
  final List<Widget> tabBodys = [
    MyHomePage(),
    CategoryPage(),
  ];
  int currentIndex = 0;
  var currentPage;

  @override
  void initState() {
    currentPage = tabBodys[currentIndex];
    _pageController = new PageController()
      ..addListener(() {
        if (currentPage != _pageController.page.round()) {
          setState(() {
            currentPage = _pageController.page.round();
          });
        }
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demo'),
        leading: Text(''),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items:bottomTabs,
        onTap: (index){
          setState(() {
            currentIndex=index;
            currentPage =tabBodys[currentIndex];
          });
        },
      ),
      body: IndexedStack(
        index: currentIndex,
        children: tabBodys,
      )
//      body: MaterialApp(
//        theme: ThemeData.dark(),
//        home: IndexedStack(
//          index: currentIndex,
//          children: tabBodys,
//        ),
//        routes: routers,
//      ),
    );
  }
}


