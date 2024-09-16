class ModelMessage {
  final bool isPrompt;
  final String sendMessage;
  final DateTime time;

  ModelMessage({
    required this.isPrompt,
    required this.sendMessage,
    required this.time,
  });
}
