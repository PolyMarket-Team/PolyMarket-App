import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(PolyMarketApp());
}

class PolyMarketApp extends StatelessWidget {
  const PolyMarketApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        theme: CupertinoThemeData(brightness: Brightness.light),
        home: AnimatedSplashScreen.withScreenFunction(
          splash: Image.asset(
            'assets/images/splash_logo.png',
          ),
          screenFunction: () async {
            // TODO 아래 코드 삭제후 초기 데이터를 fetch 하는 코드 추가
            Future future = Future.delayed(
                const Duration(seconds: 1), () => print('async task finish'));
            await future;
            return PolyMarketMainPage();
          },
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.fade,
          duration: 0,
          animationDuration: Duration(milliseconds: 1100),
          splashIconSize: 180,
        ));
  }
}

class PolyMarketMainPage extends StatefulWidget {
  const PolyMarketMainPage({Key? key}) : super(key: key);

  @override
  State<PolyMarketMainPage> createState() => _PolyMarketMainPageState();
}

class _PolyMarketMainPageState extends State<PolyMarketMainPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(
            "PolyMarket",
          ),
        ),
        child: Center(child: Text("PolyMarket")));
  }
}
