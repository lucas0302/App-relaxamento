import 'package:flutter/material.dart';

class MainTabViewScreen extends StatefulWidget {
  const MainTabViewScreen({super.key});

  @override
  State<MainTabViewScreen> createState() => _MainTabViewScreenState();
}

class _MainTabViewScreenState extends State<MainTabViewScreen> with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectTab = 0;

  @override
  void initState() {

    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState((){

      });
    });
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: TabBarView(
      controller: controller,
      children: [
        const HomeScreen(),
        Container(),
        Container(color: Colors.yellow,),
        Container(),
        Container(color: Colors.red,),
      ],
    ),
    bottomNavigationBar: Container(
      padding: const EdgeInsets.only(top: 15, bottom: 8),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, -4))
        ],
      ), 
      child: SafeArea(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TabButton( 
                icon: "assets/img/home_tab.png",
                title:"Home",
                isSelect: selectTab == 0,
                onPressed: (){
                changetab(0);
                
            }),
            TabButton( 
                icon: "assets/img/sleep_tab.png",
                title:"Dormir",
                isSelect: selectTab == 1,
                onPressed: (){
                changetab(1);

            }),
            TabButton( 
                icon: "assets/img/meditate_tab.png",
                title:"Meditação",
                isSelect: selectTab == 2,
                onPressed: (){
                changetab(2);

            }),
            TabButton( 
            icon: "assets/img/music_tab.png",
            title:"Musica",
            isSelect: selectTab == 3,
            onPressed: (){
            changetab(3);

            }),
            TabButton( 
            icon: "assets/img/profile_tab.png",
            title:"perfil",
            isSelect: selectTab == 4,
            onPressed: (){
            changetab(4);

            }),
            
            
        ), // Row
      ), 
    ), 
  );
   
    }
    void  changetab(int index){
    selectTab = index;
    controller?.animateTo(index);
    setState((){

    });
   }
}

