import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson_x/constants/color_const.dart';
import 'package:lesson_x/router/router.dart';
import 'package:provider/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
  EasyLocalization(
      supportedLocales: const [Locale("en"), Locale("ru"), Locale("uz")],
      path: "assets/lang",
      fallbackLocale: const Locale('uz'),
      startLocale: const Locale('uz'),
      child: MyApp(),
  ),
      );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _forRouter = MyRouter();

    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Halal Farm',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: CupertinoThemeData(
        primaryColor: ConsColors.green,
      ),
            initialRoute: '/homePage2',
      onGenerateRoute: _forRouter.onGenerateRoute,
    );
  }
}
