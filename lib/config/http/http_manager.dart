abstract interface class HttpManager {
  Future<dynamic> get(
    String endpoint,
  );

  Future<dynamic> post(
    String endpoint,
    Object body,
  );
}
