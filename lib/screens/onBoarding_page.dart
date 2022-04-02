import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lesson_x/constants/color_const.dart';
import 'package:lesson_x/constants/size_config.dart';
import 'package:lesson_x/core/widgets/cntainer_button.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int sanoq = 1;
  String rasm = "assets/images/photo.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: getHeight(340),
              width: getWidth(500),
              decoration: BoxDecoration(
                
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                ),
                image: DecorationImage(
                  image: AssetImage(rasm),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: getHeight(32),
                    bottom: getHeight(25),
                    left: getWidth(25),
                    right: getWidth(25),
                  ),
                  child: Text(
                    'onBoarding$sanoq'.tr(),
                    style: TextStyle(
                      fontSize: getHeight(22),
                      fontWeight: FontWeight.w600,
                    ),
                    
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                        sanoq == 1
                            ? Icons.fiber_manual_record
                            : Icons.fiber_manual_record_outlined,
                        color: ConsColors.blue),
                    Icon(
                      sanoq == 2
                          ? Icons.fiber_manual_record
                          : Icons.fiber_manual_record_outlined,
                      color: ConsColors.blue,
                    ),
                    Icon(
                      sanoq == 3
                          ? Icons.fiber_manual_record
                          : Icons.fiber_manual_record_outlined,
                      color: ConsColors.blue,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getHeight(90),
                bottom: getHeight(15),
              ),
              child: ContainerButton(
                name: "next".tr(),
                color: ConsColors.green,
                textColor: ConsColors.white,
                onTap: () {
                  if (sanoq != 3) {
                    sanoq += 1;
                  } else {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/signUp", (route) => false);
                  }
                  if (sanoq == 2) {
                    rasm = "assets/images/photo 02.png";
                  } else if (sanoq == 3) {
                    rasm = "assets/images/photo 03.png";
                  }
                  setState(() {});
                  debugPrint("$sanoq");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
