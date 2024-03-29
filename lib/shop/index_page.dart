import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_demos/shop/home_page.dart';
import 'package:flutter_demos/shop/category_page.dart';
import 'package:flutter_demos/shop/cart_page.dart';
import 'package:flutter_demos/shop/member_page.dart';


class IndexPage extends StatefulWidget {
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  PageController _pageController;

  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
        icon:Icon(CupertinoIcons.home),
        title:Text('首页')
    ),
    BottomNavigationBarItem(
        icon:Icon(CupertinoIcons.search),
        title:Text('分类')
    ),
    BottomNavigationBarItem(
        icon:Icon(CupertinoIcons.shopping_cart),
        title:Text('购物车')
    ),
    BottomNavigationBarItem(
        icon:Icon(CupertinoIcons.profile_circled),
        title:Text('会员中心')
    ),
  ];
  final List<Widget> tabBodies = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    MemberPage()
  ];

  int currentIndex= 0;
  var currentPage ;
  @override
  void initState() {
    currentPage=tabBodies[currentIndex];
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
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
      appBar: AppBar(title: Text('百姓生活'),),
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items:bottomTabs,
        onTap: (index){
          setState(() {
            currentIndex=index;
            currentPage =tabBodies[currentIndex];
          });
        },
      ),
      body: IndexedStack(
        index: currentIndex,
        children: tabBodies,
      ),
    );
  }
}