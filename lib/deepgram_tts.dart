import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:deepgram_sdk/models/encoding.dart';
import 'package:deepgram_sdk/models/tts_container.dart';
import 'package:deepgram_sdk/models/tts_model.dart';
import 'package:fetch_client/fetch_client.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class DeepgramTts {
  static const String baseUrl =
      "https://api.deepgram.com/v1/speak?model=aura-asteria-en";
  final String apiKey;

  DeepgramTts(this.apiKey);

  Stream<Uint8List> ttsStream(String text,
      {DeepgramTtsModel model = DeepgramTtsModel.asteria,
      int sampleRate = 16000,
      DeepgramEncoding encoding = DeepgramEncoding.linear16,
      DeepgramTtsContainer container = DeepgramTtsContainer.none}) async* {
    final http.Request request = http.Request(
        'POST',
        Uri.parse(
            'https://api.deepgram.com/v1/speak?model=${model.modelId}&encoding=${encoding.encoding}&sample_rate=$sampleRate&container=${container.container}'));
    request.headers.addAll(
        {'Authorization': 'Token $apiKey', 'Content-Type': 'application/json'});
    request.body = jsonEncode({'text': text});
    if (kIsWeb) {
      final FetchResponse streamedResponse =
          await FetchClient(mode: RequestMode.cors, streamRequests: false)
              .send(request);
      print(streamedResponse.statusCode);
    
      await for (var chunk in streamedResponse.stream) {
        yield Uint8List.fromList(chunk);
      }
    } else {
      final http.StreamedResponse streamedResponse =
          await http.Client().send(request);
      await for (var chunk in streamedResponse.stream) {
        yield Uint8List.fromList(chunk);
      }
    }
  }
}
