class Error {
  final int code;

  final String message;
  final dynamic params;

  const Error({
    this.code = 0,
    this.message = "",
    this.params,
  });
}
