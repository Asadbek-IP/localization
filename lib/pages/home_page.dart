import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end, 
        children: [
        Expanded(child:
        Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("welcome",style: TextStyle(fontSize: 20),).tr(),
            ElevatedButton(onPressed: (){}, child: const Text('login').tr())
          ],
        ),)),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green)),
                onPressed: () {
                  context.setLocale(const Locale("en","US"));
                },
                child: const Text("English"),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)),
                onPressed: () {
                  context.setLocale(const Locale("ru","RU"));
                },
                child: const Text("Russion"),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                onPressed: () {
                  context.setLocale(const Locale("uz","UZ"));
                },
                child: const Text("Uzbek"),
              ),
            ),
           const SizedBox(width: 10,),

          ],
        )
      ]),
    );
  }
}
