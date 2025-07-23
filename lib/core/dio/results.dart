class AppError {
  final String message;

  AppError({required this.message});

  @override
  String toString() {
    return message;
  }
}
