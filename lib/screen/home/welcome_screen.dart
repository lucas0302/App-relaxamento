import 'package:app_relaxamento_faculdade/common/color_extension.dart';
import 'package:app_relaxamento_faculdade/common_widget/round_button.dart';
import 'package:app_relaxamento_faculdade/screen/home/topic_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8E97FD),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Olá Lucas Linard, bem-vindo",
                    style: TextStyle(
                        color: Tcolor.primaryText,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "ao Silent Moon",
                    style: TextStyle(
                      color: Tcolor.primaryTextW,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Explore nosso aplicativo, Encontre sua paz interior",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Tcolor.primaryTextW,
                      fontSize: 16,
                    ),
                  ),
                  const Spacer(),
                  RoundButton(
                      title: "VAMOS COMEÇAR",
                      type: RoundButtonType.secondary,
                      onPressed: () {
                        context.push(const ChoseTopicScreen());
                      }),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
