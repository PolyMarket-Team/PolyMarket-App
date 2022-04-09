import 'package:flutter/cupertino.dart';

import 'package:polymarket/widgets/spinner.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset('assets/images/splash_logo.png', width: 125),
        RotateSpinnerIcon(
            iconImage: AssetImage('assets/images/arrow_rotate.png'),
            size: 42,
            color: Color(0xFFC4C4C4)),
      ]),
    );
  }
}
