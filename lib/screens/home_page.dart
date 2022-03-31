import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson_x/constants/color_const.dart';
import 'package:lesson_x/constants/size_config.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CupertinoPageScaffold(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: ConsColors.green,
        child: Center(
          child: SizedBox(
            height: getHeight(39),
            width: getWidth(126),
            child: Image.asset("assets/images/Group 1.png"),
          ),
        ),
      ),
    );
  }
}
