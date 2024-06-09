import 'package:app_relaxamento_faculdade/common/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ChoseTopicScreen extends StatefulWidget {
  const ChoseTopicScreen({super.key});

  @override
  State<ChoseTopicScreen> createState() => _ChoseTopicScreenState();
}

class _ChoseTopicScreenState extends State<ChoseTopicScreen> {
  List images = [
    {
      "image": "assets/img/1reduce-stress.png",
      "title": "Reduce Stress",
      "color": "8E97FD",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/2improve-perfomance.png",
      "title": "Improve Perfomance",
      "color": "FA6E5A",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/3increase-happiness.png",
      "title": "Increase Happiness",
      "color": "FFCF86",
      "text_color": "3F414E",
    },
    {
      "image": "assets/img/4reduce-anxiety.png",
      "title": "Reduce Anxiety",
      "color": "FEB18F",
      "text_color": "3F414E",
    },
    {
      "image": "assets/img/5personal-growth.png",
      "title": "Personal Growth",
      "color": "6CB28E",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/6better-sleep.png",
      "title": "Better Sleep",
      "color": "3F414E",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/1reduce-stress.png",
      "title": "Reduce Stress",
      "color": "8E97FD",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/2improve-perfomance.png",
      "title": "Improve Perfomance",
      "color": "FA6E5A",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/3increase-happiness.png",
      "title": "Increase Happiness",
      "color": "FFCF86",
      "text_color": "3F414E",
    },
    {
      "image": "assets/img/4reduce-anxiety.png",
      "title": "Reduce Anxiety",
      "color": "FEB18F",
      "text_color": "3F414E",
    },
    {
      "image": "assets/img/5personal-growth.png",
      "title": "Personal Growth",
      "color": "6CB28E",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/6better-sleep.png",
      "title": "Better Sleep",
      "color": "3F414E",
      "text_color": "FFECCC",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "O que leva você",
                          style: TextStyle(
                            color: Tcolor.primaryText,
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "à paz?",
                    style: TextStyle(
                      color: Tcolor.primaryText,
                      fontSize: 28,
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Text(
                    "Escolha um tópico para focar hoje:",
                    style: TextStyle(
                      color: Tcolor.secondaryText,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            )),
        Expanded(
            child: MasonryGridView.count(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          itemCount: images.length,
          itemBuilder: (context, index) {
            var height = index % 4 == 0 || index % 4 == 2
                ? context.width * 0.55
                : context.width * 0.45;
            var cObj = images[index] as Map? ?? {};

            return Container(
                height: height,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: HexColor.formHex(cObj["color"]),
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
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                cObj["title"],
                                maxLines: 2,
                                style: TextStyle(
                                    color: HexColor.formHex(cObj["text_color"]),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ]));
          },
        ))
      ],
    ));
  }
}
