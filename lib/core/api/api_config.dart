class ApiConfig {
  final String baseUrl;
  final String env;
  final bool enableLogger;

  ApiConfig({
    required this.env,
    required this.baseUrl,
    this.enableLogger = false,
  });
}
