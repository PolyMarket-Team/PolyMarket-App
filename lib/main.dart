import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

void main() {
  runApp(PolyMarketApp());
}

class PolyMarketApp extends StatelessWidget {
  const PolyMarketApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
        theme: CupertinoThemeData(brightness: Brightness.light),
        home: CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              middle: Text(
                "PolyMarket",
              ),
            ),
            child: Center(child: Text("PolyMarket"))));
  }
}
