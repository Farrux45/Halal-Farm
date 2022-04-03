import 'package:code_input/code_input.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lesson_x/constants/color_const.dart';
import 'package:lesson_x/constants/size_config.dart';
import 'package:lesson_x/core/widgets/cntainer_button.dart';
import 'package:lesson_x/screens/home%20Page/my_home_page.dart';

class SmsPage extends StatefulWidget {
  const SmsPage({Key? key}) : super(key: key);

  @override
  State<SmsPage> createState() => _SmsPageState();
}

class _SmsPageState extends State<SmsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Icon(
          Icons.clear,
        ),
        iconTheme: IconThemeData(color: ConsColors.black),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(20.0),
              bottom: getHeight(8.0),
              left: getWidth(50.0),
              right: getWidth(25.0),
            ),
            child: Text(
              "sms_page_1".tr(),
              style: TextStyle(
                fontSize: getHeight(20.0),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: getWidth(20.0)),
            child: Text(
              "sms_page_2".tr(),
              style: TextStyle(
                fontSize: getHeight(13.0),
                fontWeight: FontWeight.w400,
                color: ConsColors.grey,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: getWidth(20.0)),
            child: Text(
              "sms_page_3".tr(),
              style: TextStyle(
                fontSize: getHeight(13.0),
                fontWeight: FontWeight.w400,
                color: ConsColors.grey,
              ),
            ),
          ),
          SizedBox(
            height: getHeight(150.0),
          ),
          Column(
            children: [
              CodeInput(
                length: 4,
                keyboardType: TextInputType.number,
                builder: CodeInputBuilders.darkCircle(totalRadius: 15.0),
              ),
              SizedBox(
                height: getHeight(50.0),
              ),
              Text(
                "sms_page_4".tr(),
                style: TextStyle(
                  fontSize: getHeight(15.0),
                  fontWeight: FontWeight.w400,
                  color: ConsColors.blue,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(200),
              bottom: getHeight(15),
              left: getHeight(16.0),
            ),
            child: ContainerButton(
              name: "sms_page_5".tr(),
              color: ConsColors.green,
              textColor: ConsColors.white,
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => MyHomePage()),
                    (route) => false);
              },
            ),
          ),
        ],
      ),
    );
  }
}
