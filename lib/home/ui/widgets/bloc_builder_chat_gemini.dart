import 'package:chat_gemini/home/logic/cubit/chat_cubit.dart';
import 'package:chat_gemini/home/logic/cubit/chat_state.dart';
import 'package:chat_gemini/home/ui/widgets/text_is_typing.dart';
import 'package:chat_gemini/home/ui/widgets/user_prompt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

class BlocBuilderChatGemini extends StatelessWidget {
  const BlocBuilderChatGemini({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        if (state is ChatLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ChatError) {
          return Center(child: Text(state.errorMessage));
        } else if (state is ChatSuccess) {
          return ListView.builder(
            itemCount: state.messages.length + (state.isTyping ? 1 : 0),
            itemBuilder: (context, index) {
              if (index == state.messages.length && state.isTyping) {
                return const TextIsTyping();
              } else {
                final message = state.messages[index];
                return UserPrompt(
                  isPrompt: message.isPrompt,
                  message: message.sendMessage,
                  date: DateFormat('hh:mm a').format(message.time),
                );
              }
            },
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                "assets/animation/ai.json",
                width: 300,
                height: 200,
              ),
              const Text(
                'Type what you want to search for',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          );
        }
      },
    );
  }
}
