import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final String icon;
  final String title;
  final bool isSelect;
  final VoidCallback onPressed;

  const TabButton({super.key, required this.icon, required this.title, required this.isSelect, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            width:44,
            height:44,
            decoration: BoxDecoration(
                color: isSelect ? Tcolor.primary : Colors.transparent,
                borderRadius: BorderRadius.circular(15)
            ),
            alignment:alignment.center,
            child: Image.asset(
                icon,
                width 22,
                height:22,
                color: isSelect ? Colors.white : Tcolor.secondaryText,
            ),
          ),
        const SizedBox(
            height: 4,
        ),
        Text(
            title,
            style: TextStyle(
                color: isSelect ? Tcolor.primary : Tcolor.secondaryText,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                ),
            ),

        ],
    ),
    ); 
  }
}