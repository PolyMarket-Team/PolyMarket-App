import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width; // 디바이스 너비
    final pageAsidePadding = mediaWidth * 0.15; // 양사이드 내부여백
    final pageContentWidth = mediaWidth - (pageAsidePadding * 2);
    return Container(
        padding: EdgeInsets.fromLTRB(pageAsidePadding, 0, pageAsidePadding, 0),
        decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset('assets/images/main_logo.png'),
                margin: EdgeInsets.only(bottom: 40),
              ),
              Container(
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: Color(0xFFD3D5D9)),
                          borderRadius: BorderRadius.circular(8.0),
                          color: Color(0xFFFFFFFF)),
                      child: Column(children: [
                        CupertinoTextField(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1, color: Color(0xFFD3D5D9)))),
                          padding: EdgeInsets.fromLTRB(14.0, 13.5, 14.0, 13.5),
                          keyboardType: TextInputType.emailAddress,
                          placeholder: '이메일',
                        ),
                        CupertinoTextField(
                            obscureText: true,
                            decoration: BoxDecoration(),
                            padding:
                                EdgeInsets.fromLTRB(14.0, 13.5, 14.0, 13.5),
                            keyboardType: TextInputType.visiblePassword,
                            placeholder: '비밀번호')
                      ])),
                  margin: EdgeInsets.only(bottom: 13.5)),
              Container(
                  margin: EdgeInsets.only(bottom: 7.2),
                  width: double.infinity,
                  child: CupertinoButton(
                    color: Color(0xFF5487BE),
                    onPressed: () {},
                    child: Text('로그인'),
                  )),
              Container(
                margin: EdgeInsets.only(bottom: 21.5),
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    print('tap on 회원가입');
                  },
                  child: Text(
                    '회원가입',
                    textScaleFactor: 0.9,
                    style: TextStyle(color: Color(0xFF474646)),
                  ),
                ),
              ),
              SizedBox(
                width: pageContentWidth * 0.90,
                child: Divider(
                  color: Color(0xFFD3D5D9),
                  thickness: 1.08,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 13.0),
                child: Center(
                  child: Text('SNS계정으로 간편 로그인/회원가입',
                      textScaleFactor: 0.935,
                      style: TextStyle(color: Color(0xFF818080))),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 21.0),
                  width: pageContentWidth * 0.60,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset('assets/images/kakao_logo.svg',
                          width: 40),
                      SvgPicture.asset(
                        'assets/images/naver_logo.svg',
                        width: 40,
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
