import '../../data/models/chat_Gemini_model.dart';

abstract class ChatState {}

class ChatInitial extends ChatState {}

class ChatLoading extends ChatState {}

class ChatSuccess extends ChatState {
  final List<ModelMessage> messages;
  final bool isTyping;

  ChatSuccess(this.messages, {this.isTyping = false});
}

class ChatError extends ChatState {
  final String errorMessage;

  ChatError(this.errorMessage);
}
