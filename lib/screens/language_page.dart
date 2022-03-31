import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson_x/constants/size_config.dart';
import 'package:lesson_x/core/widgets/cntainer_button.dart';
import 'package:lesson_x/core/widgets/lang_container.dart';


class LanguagePage extends StatelessWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CupertinoPageScaffold(
      child: Padding(
        padding: EdgeInsets.all(getWidth(16)),
        child: Column(
          children: [
            SizedBox(
              height: getHeight(89),
              width: getWidth(375),
            ),
            SizedBox(
              height: getHeight(30.0),
              width: getHeight(100),
              child: Image.asset("assets/images/Group 2.png"),
            ),
            SizedBox(height: getHeight(67)),
            Text(
              "til_tanla".tr(),
              style: TextStyle(
                fontSize: getHeight(26),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: getHeight(75),
              child: Text(
                "til_t_tub".tr(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getHeight(14),
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ),
            GestureDetector(
              child: const LangContainer(
                flag: "assets/images/uzb.png",
                name: "O'zbek tili",
                topBorder: 30.0,
              ),
              onTap: () {
                context.setLocale(const Locale('uz'));
              },
            ),
            GestureDetector(
              child: const LangContainer(
                flag: 'assets/images/uk.png',
                name: "English",
              ),
              onTap: () {
                context.setLocale(const Locale('en'));
              },
            ),
            GestureDetector(
              child: const LangContainer(
                flag: 'assets/images/rus.png',
                name: "Русский язык",
              ),
              onTap: () {
                context.setLocale(const Locale('ru'));
              },
            ),
            const Spacer(),
            ContainerButton(
              name: "next".tr(),
              color: const Color(0xffCFD0CF),
              onTap: (){
                Navigator.pushNamed(context, '/-onBoarding');
              }
            ),
          ],
        ),
      ),
    );
  }
}

// class LanguagePage extends StatelessWidget {
//   const LanguagePage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     final halal_pr = context.watch<HalalProvider>();
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 40.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Image(
//                 image: const AssetImage("assets/images/Group 2.png"),
//                 height: MediaQuery.of(context).size.width * 0.1,
//               ),
//               Column(
//                 children: const [
//                   Text(
//                     "Tilni tanlang",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text("Dasturni qaysi tilda ishlatishni xohlaysiz?",
//                       style: TextStyle(fontSize: 16, color: Colors.grey)),
//                 ],
//               ),
//               SizedBox(height: MediaQuery.of(context).size.height *0.1,),
//               Container(
//                 height: MediaQuery.of(context).size.height * 0.3,
//                 width: MediaQuery.of(context).size.width * 0.9,
//                 decoration: BoxDecoration(
//                     color: const Color(0xFFF2F1F7),
//                     borderRadius: BorderRadius.circular(15)),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         halal_pr.uzb();
//                       },
//                       child: ClipRRect(
//                         borderRadius: const BorderRadius.only(
//                             topLeft: Radius.circular(15),
//                             topRight: Radius.circular(15)),
//                         child: Container(
//                           height: MediaQuery.of(context).size.height * 0.1,
//                           color: halal_pr.uz
//                               ? const Color(0xFfDFF8E9)
//                               : const Color(0xFFF2F1F7),
//                           child: Center(
//                             child: ListTile(
//                               trailing: halal_pr.uz
//                                   ? const Icon(
//                                       Icons.check,
//                                       color: Colors.green,
//                                     )
//                                   : null,
//                               leading: const Image(
//                                   image:
//                                       AssetImage("assets/images/uzb.png")),
//                               title: const Text(
//                                 "O'zbek tili",
//                                 style: TextStyle(fontSize: 18),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     // Divider(),
//                     InkWell(
//                       onTap: () {
//                         context.read<HalalProvider>().engs();
//                       },
//                       child: Container(
//                         height: MediaQuery.of(context).size.height * 0.1,
//                         color: halal_pr.eng
//                             ? const Color(0xFfDFF8E9)
//                             : const Color(0xFFF2F1F7),
//                         child: Center(
//                           child: ListTile(
//                             trailing: halal_pr.eng
//                                 ? const Icon(
//                                     Icons.check,
//                                     color: Colors.green,
//                                   )
//                                 : null,
//                             leading: const Image(
//                                 image: AssetImage("assets/images/uk.png")),
//                             title: const Text(
//                               "English",
//                                 style: TextStyle(fontSize: 18),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () {
//                         context.read<HalalProvider>().russian();
//                       },
//                       child: ClipRRect(
//                         borderRadius: const BorderRadius.only(
//                             bottomLeft: Radius.circular(15),
//                             bottomRight: Radius.circular(15)),
//                         child: Container(
//                           height: MediaQuery.of(context).size.height * 0.1,
//                           color: halal_pr.rus
//                               ? const Color(0xFfDFF8E9)
//                               : const Color(0xFFF2F1F7),
//                           child: Center(
//                             child: ListTile(
//                               trailing: halal_pr.rus
//                                   ? const Icon(
//                                       Icons.check,
//                                       color: Colors.green,
//                                     )
//                                   : null,
//                               leading: const Image(
//                                   image:
//                                       AssetImage("assets/images/rus.png")),
//                               title: const Text(
//                                 "Русский язык",
//                                 style: TextStyle(fontSize: 18),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               InkWell(
//                 onTap: () {
//                   if (halal_pr.langButton) {
//                   } else {
//                     Navigator.pushAndRemoveUntil(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => NextPage()),
//                         (route) => false);
//                   }
//                 },
//                 child: Container(
//                   decoration: BoxDecoration(
//                       color: halal_pr.langButton
//                           ? const Color(0xFFCFD0CF)
//                           : Colors.green,
//                       borderRadius: BorderRadius.circular(15)),
//                   height: MediaQuery.of(context).size.height * 0.08,
//                   width: MediaQuery.of(context).size.width * 0.9,
//                   child: const Center(child: Text("Keyingisi")),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

