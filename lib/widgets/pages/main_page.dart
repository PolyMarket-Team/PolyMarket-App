import 'package:flutter/cupertino.dart';

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
