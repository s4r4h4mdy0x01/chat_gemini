import 'package:flutter/material.dart';

class TextIsTyping extends StatelessWidget {
  const TextIsTyping({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(vertical: 15).copyWith(
          left: 15,
          right: 80,
        ),
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 166, 168, 171),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.zero,
            )),
        child: const Text(
          "Typing...",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
