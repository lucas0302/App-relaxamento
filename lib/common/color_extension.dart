import 'package:flutter/material.dart';

class Tcolor {
  static Color get primary => const Color(0xff8E97FD);
  static Color get secondary => const Color(0xff3F414E);
  static Color get tertiary => const Color(0xffEBEAEC);

  static Color get primaryText => const Color(0xff3F414E);
  static Color get primaryTextW => const Color(0xffF6F1FB);
  static Color get secondaryText => const Color(0xffA1A4B2);
  static Color get txtBG => const Color(0xffF2F3F7);
}

extension AppContext on BuildContext {
  Size get size => MediaQuery.sizeOf(this);
  double get width => size.width;
  double get height => size.height;

  Future push(Widget widget) async {
    return Navigator.push(
        this, MaterialPageRoute(builder: (context) => widget));
  }

  void pop() async {
    return Navigator.pop(this);
  }
}
