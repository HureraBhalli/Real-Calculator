

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onpress;
  const MyButton({super.key,
    required this.title,
    this.color = const Color(0xffa5a5a5),
    required this.onpress,

  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
            ),
            child: Center(
              child: Text(title, style: TextStyle(fontSize: 22,color: Colors.white, fontWeight: FontWeight.w600),),
            ),
          ),
        ),
      ),
    );
  }
}
