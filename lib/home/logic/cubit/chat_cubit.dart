import 'package:chat_gemini/home/logic/cubit/chat_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/api/chat_services.dart';
import '../../data/models/chat_Gemini_model.dart';

class ChatCubit extends Cubit<ChatState> {
  final ChatService chatService;
  List<ModelMessage> messages = [];
  bool isTyping = false;

  ChatCubit(this.chatService) : super(ChatInitial());

  void sendMessage(String message) async {
    isTyping = true;
    emit(ChatSuccess(messages, isTyping: isTyping));

    try {
      final newMessage = ModelMessage(
        isPrompt: true,
        sendMessage: message,
        time: DateTime.now(),
      );
      messages.add(newMessage);

      final response = await chatService.sendMessageToApi(message);
      final responseMessage = ModelMessage(
        isPrompt: false,
        sendMessage: response,
        time: DateTime.now(),
      );
      messages.add(responseMessage);

      isTyping = false;
      emit(ChatSuccess(messages, isTyping: isTyping));
    } catch (e) {
      isTyping = false;
      emit(ChatError("Failed to send message: $e"));
    }
  }
}
