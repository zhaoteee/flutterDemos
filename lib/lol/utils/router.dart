import 'package:flutter/material.dart';
import 'package:flutter_demos/lol/views/home.dart';
import 'package:flutter_demos/lol/views/heroDetail.dart';
import 'package:flutter_demos/lol/views/imagePreview.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => HomeView());
    case 'heroDetail':
      var arguments = settings.arguments;
      return MaterialPageRoute(
          builder: (context) => HeroDetail(heroSimple: arguments));
    case 'imagePreview':
      var arguments = settings.arguments;
      return MaterialPageRoute(
          builder: (context) => ImagePreview(image: arguments));
    default:
      return MaterialPageRoute(builder: (context) => HomeView());
  }
}
