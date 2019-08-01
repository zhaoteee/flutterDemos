import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:gsy_flutter_demo/widget/anima_demo_page.dart';
import 'package:gsy_flutter_demo/widget/anima_demo_page2.dart';
import 'package:gsy_flutter_demo/widget/animation_container_demo_page.dart';
import 'package:gsy_flutter_demo/widget/blur_demo_page.dart';
import 'package:gsy_flutter_demo/widget/bubble/bubble_demo_page.dart';
import 'package:gsy_flutter_demo/widget/clip_demo_page.dart';
import 'package:gsy_flutter_demo/widget/cloud/cloud_demo_page.dart';
import 'package:gsy_flutter_demo/widget/controller_demo_page.dart';
import 'package:gsy_flutter_demo/widget/custom_multi_render_demo_page.dart';
import 'package:gsy_flutter_demo/widget/custom_pull/refrsh_demo_page3.dart';
import 'package:gsy_flutter_demo/widget/floating_touch_demo_page.dart';
import 'package:gsy_flutter_demo/widget/honor_demo_page.dart';
import 'package:gsy_flutter_demo/widget/input_bottom_demo_page.dart';
import 'package:gsy_flutter_demo/widget/keyboard_demo_page.dart';
import 'package:gsy_flutter_demo/widget/positioned_demo_page.dart';
import 'package:gsy_flutter_demo/widget/refrsh_demo_page.dart';
import 'package:gsy_flutter_demo/widget/refrsh_demo_page2.dart';
import 'package:gsy_flutter_demo/widget/rich_text_demo_page.dart';
import 'package:gsy_flutter_demo/widget/scroll_listener_demo_page.dart';
import 'package:gsy_flutter_demo/widget/scroll_to_index_demo_page.dart';
import 'package:gsy_flutter_demo/widget/scroll_to_index_demo_page2.dart';
import 'package:gsy_flutter_demo/widget/sliver_list_demo_page.dart';
import 'package:gsy_flutter_demo/widget/sliver_stick_demo_page.dart';
import 'package:gsy_flutter_demo/widget/statusbar_demo_page.dart';
import 'package:gsy_flutter_demo/widget/stick/stick_demo_page.dart';
import 'package:gsy_flutter_demo/widget/tag_demo_page.dart';
import 'package:gsy_flutter_demo/widget/text_line_height_demo_page.dart';
import 'package:gsy_flutter_demo/widget/text_size_demo_page.dart';
import 'package:gsy_flutter_demo/widget/tick_click_demo_page.dart';
import 'package:gsy_flutter_demo/widget/transform_demo_page.dart';
import 'package:gsy_flutter_demo/widget/verification_code_input_demo_page.dart';
import 'package:gsy_flutter_demo/widget/viewpager_demo_page.dart';
import 'package:gsy_flutter_demo/widget/back_delay.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    var routeLists = routers.keys.toList();
    return Scaffold(

      body: new Container(
        child: new ListView.builder(
          itemBuilder: (context, index) {
            return new InkWell(
              onTap: () {
//                Navigator.of(context).pushNamed(routeLists[index]);
                print(index);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return routers[routeLists[index]](context);
                }));
              },
              child: new Card(
                child: new Container(
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
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

const routerName = [
  "Controller 例子",
  "圆角 例子",
  "滑动监听 例子",
  "滑动到指定位置 例子",
  "滑动到指定位置2 例子",
  "Transform 例子",
  "文本行间距 例子",
  "简单上下刷新 例子",
  "简单上下刷新2 例子",
  "简单上下刷新3 例子",
  "绝对定位 例子",
  "弹出提示框 例子",
  "Tag 例子",
  "共享元素 例子",
  "状态栏颜色 例子",
  "键盘相关 例子",
  "动画 例子",
  "动画2 例子",
  "悬浮触摸控件 例子",
  "全局字体大小 例子",
  "富文本 例子",
  "viewpager 例子",
  "滑动停靠 例子",
  "验证码输入框 例子",
  "自定义布局 例子",
  "自定义布局云词图 例子",
  "列表停靠Stick 例子",
  "列表停靠Stick2 例子",
  "键盘顶起 例子",
  "Blur 例子",
  "动画3 例子",
  "时钟动画 例子",
  "返回拦截 例子"
];

Map<String, WidgetBuilder> routers = {
  "widget/controller": (context) {
    return new ControllerDemoPage();
  },
  "widget/clip": (context) {
    return new ClipDemoPage();
  },
  "widget/scroll": (context) {
    return new ScrollListenerDemoPage();
  },
  "widget/scroll_index": (context) {
    return new ScrollToIndexDemoPage();
  },
  "widget/scroll_index2": (context) {
    return new ScrollToIndexDemoPage2();
  },
  "widget/transform": (context) {
    return new TransformDemoPage();
  },
  "widget/text_line": (context) {
    return new TextLineHeightDemoPage();
  },
  "widget/refresh": (context) {
    return new RefreshDemoPage();
  },
  "widget/refresh2": (context) {
    return new RefreshDemoPage2();
  },
  "widget/refresh3": (context) {
    return new RefreshDemoPage3();
  },
  "widget/positioned": (context) {
    return new PositionedDemoPage();
  },
  "widget/bubble": (context) {
    return new BubbleDemoPage();
  },
  "widget/tags": (context) {
    return new TagDemoPage();
  },
  "widget/honor": (context) {
    return new HonorDemoPage();
  },
  "widget/statusbar": (context) {
    return new StatusBarDemoPage();
  },
  "widget/keyboard": (context) {
    return new KeyBoardDemoPage();
  },
  "widget/anima": (context) {
    return new AnimaDemoPage();
  },
  "widget/anima2": (context) {
    return new AnimaDemoPage2();
  },
  "widget/floating": (context) {
    return new FloatingTouchDemoPage();
  },
  "widget/textsize": (context) {
    return new TextSizeDemoPage();
  },
  "widget/richtext": (context) {
    return new RichTextDemoPage();
  },
  "widget/viewpager": (context) {
    return new ViewPagerDemoPage();
  },
  "widget/sliver": (context) {
    return new SliverListDemoPage();
  },
  "widget/vc": (context) {
    return new VerificationCodeInputDemoPage();
  },
  "widget/cmd": (context) {
    return new CustomMultiRenderDemoPage();
  },
  "widget/cloud": (context) {
    return new CloudDemoPage();
  },
  "widget/stick": (context) {
    return new StickDemoPage();
  },
  "widget/stick2": (context) {
    return new SliverStickListDemoPage();
  },
  "widget/kb": (context) {
    return new InputBottomDemoPage();
  },
  "widget/blur": (context) {
    return new BlurDemoPage();
  },
  "widget/anima_container": (context) {
    return new AnimationContainerDemoPage();
  },
  "widget/back": (context) {
    return new TickClickDemoPage();
  },
  "widget/tick": (context) {
    return new WillPopScopeTestRoute();
  },

};