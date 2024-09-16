import 'package:flutter/material.dart';
import 'package:chat_gemini/home/ui/widgets/button_send_massage.dart';
import 'package:chat_gemini/home/ui/widgets/text_field_custom.dart';

class TextFieldAndButtomSendMessage extends StatelessWidget {
  const TextFieldAndButtomSendMessage({
    super.key,
    required this.promptController,
  });

  final TextEditingController promptController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Expanded(
            flex: 20,
            child: TextFieldCustom(promptController: promptController),
          ),
          const Spacer(),
          BottonSendMessage(promptController: promptController),
        ],
      ),
    );
  }
}
