import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({
    super.key,
    required this.promptController,
  });

  final TextEditingController promptController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: promptController,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: 'Enter Text',
          hintStyle: const TextStyle(color: Colors.white, fontSize: 18)),
    );
  }
}
