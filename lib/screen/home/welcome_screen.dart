import 'package:app_relaxamento_faculdade/common/color_extension.dart';
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
                      "Olá Lucas Linard, bem-vindo!",
                      style: TextStyle(
                          color: Tcolor.primaryText,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
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
