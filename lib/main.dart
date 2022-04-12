import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'package:polymarket/widgets/pages/main_page.dart';
import 'package:polymarket/widgets/splash_screen.dart';
import 'package:polymarket/widgets/pages/login_page.dart';

void main() {
  runApp(PolyMarketApp());
}

class PolyMarketApp extends StatelessWidget {
  const PolyMarketApp({Key? key}) : super(key: key);

  Future initState() {
    // FIXME 아래 코드 삭제후 초기 데이터를 fetch 하는 코드 추가
    return Future.delayed(
        const Duration(seconds: 1), () => print('async task finish'));
  }

  @override
  Widget build(BuildContext context) {
    final Widget splashScreenWithMainPage =
        AnimatedSplashScreen.withScreenFunction(
      disableNavigation: true,
      splash: SplashWidget(),
      screenFunction: () async {
        await initState();
        return PolyMarketMainPage();
      },
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
      duration: 0,
      animationDuration: Duration(milliseconds: 1200),
      splashIconSize: 252,
    );

    final loginPage = LoginPage();

    final Map<String, WidgetBuilder> routes = {
      '/': (BuildContext context) => splashScreenWithMainPage,
      '/login': (BuildContext context) => loginPage
    };

    return CupertinoApp(
        debugShowCheckedModeBanner: false,
        theme: CupertinoThemeData(brightness: Brightness.light),
        routes: routes);
  }
}
