import 'package:chat_gemini/home/data/api/chat_services.dart';
import 'package:chat_gemini/home/logic/cubit/chat_cubit.dart';
import 'package:chat_gemini/home/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => ChatCubit(ChatService()),
        child: const HomeScreen(),
      ),
    );
  }
}
