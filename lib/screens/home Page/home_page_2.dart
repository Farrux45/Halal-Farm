import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lesson_x/constants/color_const.dart';
import 'package:lesson_x/constants/size_config.dart';
import 'package:lesson_x/screens/home%20Page/widgets/add_cont.dart';
import 'package:lesson_x/screens/home%20Page/widgets/add_cont_animal.dart';
import 'package:lesson_x/screens/home%20Page/widgets/my_animal_cont.dart';

class MyHomePage2 extends StatelessWidget {
  const MyHomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConsColors.green,
      body: CustomScrollView(
        physics: const ScrollPhysics(),
        slivers: [
          SliverAppBar(
            iconTheme: IconThemeData(color: ConsColors.green),
            leading: Text(""),
            toolbarHeight: getHeight(200),
            backgroundColor: ConsColors.green,
            flexibleSpace: Padding(
              padding: EdgeInsets.only(
                left: getWidth(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: const AssetImage(
                      'assets/images/logo1.png',
                    ),
                    width: getWidth(140.0),
                  ),
                  SizedBox(
                    height: getHeight(20.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "home_page_5".tr(),
                      style: TextStyle(
                        color: ConsColors.white,
                        fontSize: getHeight(14.0),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.add_circle_outline_sharp,
                        color: Colors.white,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "home_page_6".tr(),
                        style:
                            const TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                  Text(
                    "home_page_7".tr(),
                    style: const TextStyle(
                      color: Color(0xffCDE9D1),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              alignment: const Alignment(-0.5, 0.1),
              height: getHeight(77),
              width: getWidth(375),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40.0),
                ),
                color: Color(0xFFF2F1F7),
              ),
              child: Text(
                "home_page_8".tr(),
                style: TextStyle(
                  color: ConsColors.black,
                  fontSize: getWidth(24),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, mainAxisExtent: getHeight(727)),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  color: const Color(0xFFF2F1F7),
                  child: const ContMyAnimals(),
                );
              },
              childCount: 2,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: getHeight(160.0),
              width: getWidth(375),
              color: const Color(0xFFF2F1F7),
              child: Padding(
                padding: EdgeInsets.all(
                  getWidth(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ContAdd(name: "+ " "Yangi hayvon sotib olish"),
                    SizedBox(
                      height: getHeight(64),
                    ),
                    Text(
                      "Sizga Yoqishi mumkin",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getWidth(24),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisExtent: getWidth(378),
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  color: const Color(0xFFF2F1F7), child: const AddContAnimals(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
