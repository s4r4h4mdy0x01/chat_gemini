import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/chat_cubit.dart';

class BottonSendMessage extends StatelessWidget {
  const BottonSendMessage({
    super.key,
    required this.promptController,
  });

  final TextEditingController promptController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final message = promptController.text;
        if (message.isNotEmpty) {
          context.read<ChatCubit>().sendMessage(message);
          promptController.clear();
        }
      },
      child: const CircleAvatar(
        radius: 30,
        backgroundColor: Color.fromARGB(255, 67, 131, 184),
        child: Icon(
          Icons.send,
          color: Colors.white,
        ),
      ),
    );
  }
}
