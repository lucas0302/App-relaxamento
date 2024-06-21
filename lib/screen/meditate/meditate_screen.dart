import 'dart:ffi';
import 'dart:ui';

import 'package:app_relaxamento_faculdade/common/color_extension.dart';
import 'package:app_relaxamento_faculdade/screen/home/reminder_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MeditateScreen extends StatefulWidget {
  const MeditateScreen({super.key});

  @override
  State<MeditateScreen> createState() => _MeditateScreenState();
}

class _MeditateScreenState extends State<MeditateScreen> {
  int selectIndex = 0;
  List catArr = [
    {"icon": "assets/img/all.png", "title": "Todos"},
    {"icon": "assets/img/fav_m.png", "title": "Meu"},
    {"icon": "assets/img/anxious.png", "title": "Ansiedade"},
    {"icon": "assets/img/sleep_btn.png", "title": "Soneca"},
    {"icon": "assets/img/kids.png", "title": "Crianças"},
  ];

  List dataArr = [
    {"image": "assets/img/m1.png", "title": "7 dias de tranquilidade"},
    {"image": "assets/img/m2.png", "title": "Tratamento da ansiedade"},
    {"image": "assets/img/m3.png", "title": "Reduzir a ansiedade"},
    {"image": "assets/img/m4.png", "title": "Felicidade"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Medite",
                      style: TextStyle(
                        color: Tcolor.primaryText,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Podemos aprender como reconhecer quando nossa mente está fazendo as acrobacias diárias dela.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Tcolor.secondaryText,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: 120,
            child: ListView.separated(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var cObj = catArr[index];
                  return InkWell(
                    onTap: () {
                      selectIndex = index;
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                              color: selectIndex == index
                                  ? Tcolor.primary
                                  : const Color(0xffA0A3B1),
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          child: Image.asset(
                            cObj["icon"],
                            width: 25,
                            height: 25,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          cObj["title"],
                          style: TextStyle(
                            color: selectIndex == index
                                ? Tcolor.primary
                                : Tcolor.secondaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      width: 20,
                    ),
                itemCount: catArr.length),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: const Color(0xffF1DDCF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "assets/img/d1.png",
                  width: double.maxFinite,
                  fit: BoxFit.fitHeight,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "pensamento diário.",
                              style: TextStyle(
                                  color: Tcolor.primaryText,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "APP 30. Pausar",
                              style: TextStyle(
                                color: Tcolor.primaryText,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          "assets/img/play_black.png",
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          MasonryGridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            itemCount: dataArr.length,
            itemBuilder: (context, index) {
              var height = index % 4 == 0 || index % 4 == 2
                  ? context.width * 0.55
                  : context.width * 0.45;
              var cObj = dataArr[index] as Map? ?? {};

              return InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  context.push(const RemindersScreen());
                },
                child: Container(
                    height: height,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Stack(alignment: Alignment.topCenter, children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        child: Image.asset(
                          cObj["image"],
                          width: double.maxFinite,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                width: double.maxFinite,
                                color: Colors.black12,
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                  cObj["title"],
                                  maxLines: 2,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ])),
              );
            },
          )
        ],
      ),
    ));
  }
}
