enum DeepgramTtsContainer {
  wav(
    container: "wav",
    encodings: ["linear16", "mulaw", "alaw"],
    sampleRates: [8000, 16000, 24000, 32000, 48000],
    bitrate: null,
  ),
  mp3(
    container: "mp3",
    encodings: ["mp3"],
    sampleRates: [22050],
    bitrate: [32000, 48000],
  ),
  ogg(
    container: "ogg",
    encodings: ["opus"],
    sampleRates: [48000],
    bitrate: [12000, 4000, 650000],
  ),
  flac(
    container: "flac",
    encodings: ["flac"],
    sampleRates: [8000, 16000, 22050, 32000, 48000],
    bitrate: null,
  ),
  aac(
    container: "aac",
    encodings: ["aac"],
    sampleRates: [8000, 16000, 22050, 32000, 48000],
    bitrate: null,
  ),
  none(
    container: "none",
    encodings: ["linear16", "mulaw", "alaw"],
    sampleRates: null,
    bitrate: null,
  );

  final String container;
  final List<String> encodings;
  final List<int>? sampleRates;
  final List<int>? bitrate;

  const DeepgramTtsContainer({
    required this.container,
    required this.encodings,
    this.sampleRates,
    this.bitrate,
  });

  @override
  String toString() {
    return 'Container: $container, Encodings: $encodings, Sample Rates: ${sampleRates ?? "Not Applicable"}, Bitrate: ${bitrate ?? "Not Applicable"}';
  }
}
