import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:deepgram_sdk/deepgram_tts.dart';
import 'package:fetch_client/fetch_client.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Deepgram {
  Deepgram(this.apiKey) {
    tts = DeepgramTts(apiKey);
  }

  final String apiKey;
  late DeepgramTts tts;
}
