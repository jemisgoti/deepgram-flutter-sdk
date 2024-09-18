enum DeepgramTtsModel {
  asteria("Asteria", "English (US)", "Female", "aura-asteria-en"),
  luna("Luna", "English (US)", "Female", "aura-luna-en"),
  stella("Stella", "English (US)", "Female", "aura-stella-en"),
  athena("Athena", "English (UK)", "Female", "aura-athena-en"),
  hera("Hera", "English (US)", "Female", "aura-hera-en"),
  orion("Orion", "English (US)", "Male", "aura-orion-en"),
  arcas("Arcas", "English (US)", "Male", "aura-arcas-en"),
  perseus("Perseus", "English (US)", "Male", "aura-perseus-en"),
  angus("Angus", "English (Ireland)", "Male", "aura-angus-en"),
  orpheus("Orpheus", "English (US)", "Male", "aura-orpheus-en"),
  helios("Helios", "English (UK)", "Male", "aura-helios-en"),
  zeus("Zeus", "English (US)", "Male", "aura-zeus-en");

  final String name;
  final String language;
  final String gender;
  final String modelId;

  const DeepgramTtsModel(this.name, this.language, this.gender, this.modelId);

  @override
  String toString() {
    return '$name ($language, $gender) - Model ID: $modelId';
  }
}
