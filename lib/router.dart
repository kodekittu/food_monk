import 'package:flutter/material.dart';
import 'package:foodmonk/screens/screen_1.dart';
import 'package:foodmonk/screens/screen_2.dart';
import 'package:foodmonk/screens/screen_3.dart';
import 'package:foodmonk/screens/screen_4.dart';
import 'package:foodmonk/screens/screen_5.dart';
import 'package:foodmonk/screens/screen_6.dart';
import 'package:foodmonk/screens/screen_7.dart';

const String splashScreenViewRoute = '/';
const String loginRoute = 'login';
const String langRoute = 'lang';
const String detailRoute = 'detail';
const String quesRoute = 'ques';
const String resultRoute = 'result';
const String shareRoute = 'share';
const String networkRoute = 'network';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case loginRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case langRoute:
      return MaterialPageRoute(builder: (context) => LanguagePage());
    case detailRoute:
      return MaterialPageRoute(builder: (context) => DetailsPage());
    case quesRoute:
      return MaterialPageRoute(builder: (context) => QuestionsPage());
    case resultRoute:
      return MaterialPageRoute(builder: (context) => ResultPage());
    case shareRoute:
      return MaterialPageRoute(builder: (context) => SharePage());
    case networkRoute:
      return MaterialPageRoute(builder: (context) => NetworkPage());
  }
}
