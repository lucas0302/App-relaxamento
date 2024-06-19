import 'package:app_relaxamento_faculdade/common/color_extension.dart';
import 'package:app_relaxamento_faculdade/common_widget/select_tab_button.dart';
import 'package:flutter/material.dart';

class CourseDetailScreen extends StatefulWidget {
  const CourseDetailScreen({super.key});

  @override
  State<CourseDetailScreen> createState() => _CourseDetailScreen();
}

class _CourseDetailScreen extends State<CourseDetailScreen> {
  int selectTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              backgroundColor: Colors.white,
              leading: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: InkWell(
                  onTap: () {
                    context.pop();
                  },
                  child: Image.asset("assets/img/back_white.png",
                      width: 55, height: 55),
                ),
              ),
              expandedHeight: context.width * 0.6,
              actions: [
                InkWell(
                  onTap: () {},
                  child: Image.asset("assets/img/fav_button.png",
                      width: 45, height: 45),
                ),
                const SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset("assets/img/download_button.png",
                        width: 45, height: 45),
                  ),
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  child: Image.asset(
                    "assets/img/detail_top.png",
                    width: context.width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bom dia!",
                          style: TextStyle(
                              color: Tcolor.primaryText,
                              fontSize: 34,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Curso",
                          style: TextStyle(
                              color: Tcolor.secondaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Relaxe sua mente em uma profunda noite de sono",
                          style: TextStyle(
                            color: Tcolor.secondaryText,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/img/fav.png",
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                              "235 Favoritos",
                              style: TextStyle(
                                  color: Tcolor.secondaryText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            )),
                            Image.asset(
                              "assets/img/headphone.png",
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                              "526 Ouvintes",
                              style: TextStyle(
                                  color: Tcolor.secondaryText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Escolha um narrador",
                          style: TextStyle(
                              color: Tcolor.primaryText,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SelectTabButton(
                          title: "Voz Masculina",
                          isSelect: selectTab == 0,
                          onPressed: () {
                            setState(() {
                              selectTab = 0;
                            });
                          }),
                      SelectTabButton(
                          title: "Voz Feminina",
                          isSelect: selectTab == 1,
                          onPressed: () {
                            setState(() {
                              selectTab = 1;
                            });
                          }),
                    ],
                  ),
                  const Divider(
                    height: 2,
                  ),
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            children: [

                              Image.asset( index == 0 ? "assets/img/play_color.png" : "assets/img/play_border.png", 
                              width: 40,
                              height: 40,
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Foco Total",
                                    style: TextStyle(
                                      color: Tcolor.primaryText,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),

                                  const SizedBox(height: 4,),
                                  Text(
                                    "10 Minutos",
                                    style: TextStyle(
                                      color: Tcolor.secondaryText,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600
                                    ),
                                  )
                                ],
                              )
                            )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const Divider(
                            height: 1,
                          ),
                      itemCount: 5)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
