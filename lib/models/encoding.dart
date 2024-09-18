enum DeepgramEncoding {
  linear16("linear16", "16-bit, little-endian, signed PCM WAV data"),
  mulaw("mulaw", "Mu-law encoded WAV data"),
  alaw("alaw", "A-law encoded WAV data"),
  mp3("mp3", "MP3 audio compression format"),
  opus("opus", "Ogg Opus codec"),
  flac("flac", "Free Lossless Audio Codec (FLAC)"),
  aac("aac", "Advanced Audio Coding format");

  final String encoding;
  final String description;

  const DeepgramEncoding(this.encoding, this.description);

  @override
  String toString() {
    return '$encoding: $description';
  }
}
