import 'package:chat_gemini/home/data/api/api_constant.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class ChatService {
  final model =
      GenerativeModel(model: ApiConstant.model, apiKey: ApiConstant.apiKey);

  Future<String> sendMessageToApi(String message) async {
    final content = [Content.text(message)];
    final response = await model.generateContent(content);
    return response.text ?? "";
  }
}
