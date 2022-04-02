import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lesson_x/constants/color_const.dart';
import 'package:lesson_x/constants/size_config.dart';
import 'package:lesson_x/core/widgets/cntainer_button.dart';
import 'package:lesson_x/core/widgets/cont_button.dart';
import 'package:lesson_x/main.dart';
import 'package:lesson_x/screens/view_folder/registration_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    String rasm = "assets/images/Halal.png";
    return Scaffold(
      backgroundColor: ConsColors.green,
      appBar: AppBar(
        backgroundColor: ConsColors.green,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(18),
              bottom: getHeight(10),
              left: getWidth(10),
              right: getWidth(10),
            ),
            child: Text(
              "title".tr(),
              style: TextStyle(
                fontSize: getHeight(12.0),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          expanded_1(rasm),
          expanded_2(),
          expanded_3(context),
        ],
      ),
    );
  }

  Expanded expanded_3(BuildContext context) {
    return Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(70),
                  bottom: getHeight(15),
                ),
                child: ContButton(
                  name: "button".tr(),
                  color: ConsColors.white,
                  textColor: ConsColors.black,
                  onTap: () {
                    Navigator.pushNamed(context, "/viewPage");
                  },
                ),
              ),
              ContainerButton(
                name: "button_2".tr(),
                color: ConsColors.green,
                textColor: ConsColors.white,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const RegistrationPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        );
  }

  Expanded expanded_2() {
    return Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: getWidth(18.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "sign_up_title".tr(),
                    style: TextStyle(
                      fontSize: getHeight(28.0),
                      fontWeight: FontWeight.w700,
                      color: ConsColors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: getHeight(20),
                ),
                Text(
                  "sign_up_title_2".tr(),
                  style: TextStyle(
                    color: ConsColors.white,
                    fontSize: getWidth(16),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        );
  }

  Expanded expanded_1(String rasm) {
    return Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: getWidth(15.0),
            ),
            child: Container(
              height: getHeight(150.0),
              width: getWidth(250.0),
              child: Image(
                image: AssetImage(rasm),
              ),
            ),
          ),
        );
  }
}
