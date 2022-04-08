import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson_x/constants/color_const.dart';
import 'package:lesson_x/constants/size_config.dart';
import 'package:lesson_x/core/widgets/cont_button.dart';
import 'package:lesson_x/main.dart';
import 'package:lesson_x/screens/view_folder/sms_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<RegistrationPage> {
  final _key = GlobalKey<FormState>();

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: myAppBar(),
      body: Column(
        children: [
          textFormField_1(),
          textFormField_2(),
          textFormField_3(),
          SizedBox(
            height: getHeight(100.0),
          ),
          Column(
            children: [
              Text(
                "reg_page_4".tr(),
                style: TextStyle(color: ConsColors.grey),
              ),
              SizedBox(
                height: getHeight(15.0),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      googleButton(),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: getHeight(15.0),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      appleButton(),
                      SizedBox(
                        height: getHeight(15.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          facebookButton(),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: getHeight(55.0),
                      bottom: getHeight(15),
                    ),
                    child: ContButton(
                      name: "next".tr(),
                      color: Colors.grey.shade200,
                      textColor: Colors.grey.shade400,
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SmsPage()),
                            (route) => false);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  ElevatedButton facebookButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.grey.shade200,
        elevation: 0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        minimumSize: const Size(180, 60),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.transparent,
            child: Image(
              image: AssetImage('assets/images/facebook.png'),
            ),
          ),
          Text(
            "Facebook",
            style: TextStyle(fontSize: getWidth(18.0), color: ConsColors.black),
          ),
        ],
      ),
      onPressed: () {},
    );
  }

  ElevatedButton appleButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.grey.shade200,
        elevation: 0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        minimumSize: const Size(180, 60),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.transparent,
            child: Image(
              image: AssetImage('assets/images/apple.png'),
            ),
          ),
          Text(
            "Apple",
            style: TextStyle(fontSize: getWidth(18.0), color: ConsColors.black),
          ),
        ],
      ),
      onPressed: () {},
    );
  }

  ElevatedButton googleButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.grey.shade200,
        elevation: 0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        minimumSize: const Size(220, 60),
        maximumSize: const Size(390, 60),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.transparent,
            child: Image(
              image: AssetImage('assets/images/google.png'),
            ),
          ),
          Text(
            "Google",
            style: TextStyle(fontSize: getWidth(18.0), color: ConsColors.black),
          ),
        ],
      ),
      onPressed: () {},
    );
  }

  Padding textFormField_3() {
    return Padding(
      padding: EdgeInsets.only(
        top: getHeight(30.0),
        left: getWidth(15.0),
        right: getWidth(15.0),
      ),
      child: Form(
        child: TextFormField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: "reg_page_3".tr(),
          ),
        ),
      ),
    );
  }

  Padding textFormField_2() {
    return Padding(
      padding: EdgeInsets.only(
        top: getHeight(30.0),
        left: getWidth(15.0),
        right: getWidth(15.0),
      ),
      child: Form(
        key: _key,
        child: TextFormField(
          keyboardType: TextInputType.none,
          controller: _controller,
          decoration: InputDecoration(
            labelText: "reg_page_2".tr(),
          ),
          onTap: () {
            showCupertinoModalPopup(
                context: context,
                builder: (_) => Container(
                      height: MediaQuery.of(context).size.height * 0.45,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.35,
                            child: CupertinoDatePicker(
                                initialDateTime: DateTime(2022, 1, 1),
                                onDateTimeChanged: (val) {
                                  setState(() {});
                                }),
                          ),

                          // Close the modal
                          CupertinoButton(
                            child: Text('OK'),
                            onPressed: () => Navigator.of(context).pop(),
                          )
                        ],
                      ),
                    ));
          },
        ),
      ),
    );
  }

  Padding textFormField_1() {
    return Padding(
      padding: EdgeInsets.only(
        top: getHeight(30.0),
        left: getWidth(15.0),
        right: getWidth(15.0),
      ),
      child: Form(
        child: TextFormField(
          
          decoration: InputDecoration(
            labelText: "reg_page".tr(),
          ),
        ),
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.blue),
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 25.0,
            ),
            child: Text(
              "button_3".tr(),
              style: TextStyle(color: ConsColors.blue),
            ),
          ),
          Text(
            "button".tr(),
            style: TextStyle(
              color: ConsColors.black,
              fontSize: getWidth(18.0),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
