import 'package:app_relaxamento_faculdade/common/color_extension.dart';
import 'package:app_relaxamento_faculdade/common_widget/round_button.dart';
import 'package:app_relaxamento_faculdade/screen/home/reminder_screen.dart';
import 'package:app_relaxamento_faculdade/screen/home/welcome_screen.dart';
import 'package:app_relaxamento_faculdade/screen/login/login_screen.dart';
import 'package:app_relaxamento_faculdade/screen/login/sign_up_screen.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StartUpScreen extends StatefulWidget {
  const StartUpScreen({super.key});

  @override
  State<StartUpScreen> createState() => _StartUpScreenState();
}

class _StartUpScreenState extends State<StartUpScreen> {
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Image.asset(
            "assets/img/image1.png",
            width: 250,
            fit: BoxFit.fitWidth,
          ),
          const Spacer(),
          Text(
            "Nós somos o que fazemos",
            style: TextStyle(
              color: Tcolor.primaryText,
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Milhares de pessoas usam o -nomedoapp-\npara relaxar",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Tcolor.secondaryText,
              fontSize: 16,
            ),
          ),
          const Spacer(),
          RoundButton(
            title: "CADASTRAR",
            onPressed: () {
              context.push(const SignUpScreen());
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "JÁ POSSUI UMA CONTA?",
                style: TextStyle(
                  color: Tcolor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {
                  context.push(const LoginScreen());
                },
                child: Text(
                  "LOG IN",
                  style: TextStyle(
                    color: Tcolor.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
