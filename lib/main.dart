import 'package:app_relaxamento_faculdade/common/color_extension.dart';
import 'package:app_relaxamento_faculdade/screen/login/startup_screen.dart';
import 'package:flutter/material.dart';
// import 'firebase_options.dart';

Future<void> main() async {
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meditation App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "HelveticaNeue",
        appBarTheme: const AppBarTheme(
            elevation: 0, 
            backgroundColor: Colors.transparent
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Tcolor.primary),
        useMaterial3: false,
      ),
      home: const StartupScreen(),
    );
  }
}
