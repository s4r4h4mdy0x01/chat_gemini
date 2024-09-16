import 'package:chat_gemini/home/ui/widgets/bloc_builder_chat_gemini.dart';
import 'package:chat_gemini/home/ui/widgets/text_field_and_button_send-message.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController promptController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(
                  0xff101925,
                ),
                Color(0xff111538),
                Color(0xff47669C)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 32),
            child: Column(
              children: [
                const Expanded(
                  child: BlocBuilderChatGemini(),
                ),
                TextFieldAndButtomSendMessage(
                    promptController: promptController),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
