import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _tarjimon(Locale? locale) {
    context.setLocale(locale!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Column(
            children: [
              const SizedBox(height: 200.0),
              const Text("salom").tr(),
              const SizedBox(height: 10.0),
              const Text("mashina").tr(),
              const SizedBox(height: 10.0),
              const Text("ish").tr(),
            ],
          )),
          Expanded(
            child: Center(
              child: Column(
                children: [
                  LangButton(
                    text: '🇷🇺',
                    onTap: (() => _tarjimon(
                          const Locale('ru', 'RU'),
                        )),
                  ),
                  LangButton(
                    text: '🇺🇿',
                    onTap: (() => _tarjimon(
                          const Locale('uz', 'UZ'),
                        )),
                  ),
                  LangButton(
                    text: '🇺🇸',
                    onTap: (() => _tarjimon(
                          const Locale('en', 'US'),
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextButton LangButton({
    required GestureDoubleTapCallback? onTap,
    required String? text,
  }) {
    return TextButton(
      onPressed: onTap!,
      child: Text(
        text!,
        style: const TextStyle(
          fontSize: 30.0,
        ),
      ),
    );
  }
}
