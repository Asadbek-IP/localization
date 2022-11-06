import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization/pages/home_page.dart';

void main(List<String> args) async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
runApp( EasyLocalization(
   supportedLocales: [Locale('en',"US"),Locale('ru','RU'),Locale('uz','UZ')],
   path: "assets/translation",
   fallbackLocale: Locale('uz','UZ'),
  child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       localizationsDelegates: context.localizationDelegates,
       supportedLocales: context.supportedLocales,
       locale: context.locale,
      home: const HomePage(),
    );
  }
}
