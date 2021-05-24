enum AppErrorType {
  network,
  badRequest,
  unauthorized,
  cancel,
  timeout,
  server,
  notFound,
  front,
  unknown,
  F,
}

class AppError {
  final AppErrorType type;
  final String? message;

  AppError({
    required this.type,
    this.message,
  });
}
