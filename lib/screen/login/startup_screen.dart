import 'package:app_relaxamento_faculdade/common/color_extension.dart';
import 'package:app_relaxamento_faculdade/common_widget/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StartupScreen extends StatefulWidget {
  const StartupScreen({super.key});

  @override
  State<StartupScreen> createState() => _StartUpScreenState();
}

class _StartUpScreenState extends State<StartupScreen> {
  @override 
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/img/startup_top.png",
            width: double.maxFinite,
            fit: BoxFit.fitWidth,
          ),
          const Spacer(),
          
          const Spacer(),

          RoundButton(title: "Crie uma conta", onPressed: () {

          },
          ),

          Row(
            children: [
              Text(
                "Já tem uma conta?",
                style: TextStyle(
                  color: Tcolor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(onPressed: () {
                
              }, child: Text(
                "LogIn",
                style: TextStyle(
                  color: Tcolor.primary,
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                ),
              ),
              )
            ],
          )
        ],
      ),
    );
  }
}