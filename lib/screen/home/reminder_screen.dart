import 'package:app_relaxamento_faculdade/common/color_extension.dart';
import 'package:app_relaxamento_faculdade/common_widget/circle_button.dart';
import 'package:app_relaxamento_faculdade/common_widget/round_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RemindersScreen extends StatefulWidget {
  const RemindersScreen({super.key});

  @override
  State<RemindersScreen> createState() => _RemindersScreenState();
}

class _RemindersScreenState extends State<RemindersScreen> {
  List dayArr = [
    {"name": "DOM", "is_select": false},
    {"name": "SEG", "is_select": false},
    {"name": "TER", "is_select": false},
    {"name": "QUA", "is_select": false},
    {"name": "QUI", "is_select": false},
    {"name": "SEX", "is_select": false},
    {"name": "SAB", "is_select": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                constraints: BoxConstraints(minHeight: context.height - 180),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Que hora você gostaria\nde meditar?",
                      style: TextStyle(
                          color: Tcolor.primaryText,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "O horário pode ser o de sua preferência! Mas recomendamos que seja feito logo pela manhã.",
                      style: TextStyle(
                        color: Tcolor.secondaryText,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                          color: const Color(0xffF5F5F9),
                          borderRadius: BorderRadius.circular(20)),
                      child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.time,
                        onDateTimeChanged: (DateTime newDate) {},
                        use24hFormat: false,
                        minuteInterval: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      "Que dia você gostaria\nde meditar?",
                      style: TextStyle(
                          color: Tcolor.primaryText,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Fazer todo dia é o melhor! Mas recomendamos fazer pelo menos 5 dias.",
                      style: TextStyle(
                        color: Tcolor.secondaryText,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: dayArr.map((dObj) {
                        return CircleButton(
                            title: dObj["name"],
                            isSelect: dObj["is_select"],
                            onPressed: () {
                              setState(() {
                                dayArr[dayArr.indexOf(dObj)]["is_select"] =
                                    !(dObj["is_select"] as bool? ?? false);
                              });
                            });
                      }).toList(),
                    )
                  ],
                ),
              ),
              RoundButton(title: "SAVE", onPressed: () {}),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "NÃO, OBRIGADO",
                        style: TextStyle(
                            color: Tcolor.primaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
