import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PolyMarketMainPage extends StatefulWidget {
  const PolyMarketMainPage({Key? key}) : super(key: key);

  @override
  State<PolyMarketMainPage> createState() => _PolyMarketMainPageState();
}

class _PolyMarketMainPageState extends State<PolyMarketMainPage> {
  final List<Widget> _tabs = [
    HomeTab(),
    LiveCommerceTab(),
    ChattingTab(),
    UserProfileTab()
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: Color(0xFFFFFFFF),
          middle: Text(
            "PolyMarket",
          ),
        ),
        child: CupertinoTabScaffold(
          resizeToAvoidBottomInset: false,
          tabBar: CupertinoTabBar(
            height: 49,
            backgroundColor: Color(0xFFFFFFFF),
            inactiveColor: Color(0xFF000000),
            activeColor: Color(0xFF535252),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined, size: 26),
                  activeIcon: Icon(Icons.home, size: 26),
                  label: '홈'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.videocam_outlined, size: 26),
                  activeIcon: Icon(Icons.videocam, size: 26),
                  label: '라이브커머스'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.comment, size: 20.6),
                  activeIcon: Icon(FontAwesomeIcons.solidComment, size: 20.6),
                  label: '채팅'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline,
                    size: 26,
                  ),
                  activeIcon: Icon(Icons.person, size: 26),
                  label: '프로필'),
            ],
          ),
          tabBuilder: (BuildContext context, index) {
            return _tabs[index];
          },
        ));
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('HomeTab'),
    );
  }
}

class LiveCommerceTab extends StatelessWidget {
  const LiveCommerceTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('LiveCommerceTab'),
    );
  }
}

class ChattingTab extends StatelessWidget {
  const ChattingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('ChattingTab'),
    );
  }
}

class UserProfileTab extends StatelessWidget {
  const UserProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('UserProfileTab'),
    );
  }
}
