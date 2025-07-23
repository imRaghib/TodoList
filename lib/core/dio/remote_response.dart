class RemoteResponse<T> {
  final String outcome;
  final String message;
  final T? data;

  RemoteResponse({
    required this.outcome,
    required this.message,
    required this.data,
  });

  factory RemoteResponse.someThingWentWrong() {
    return RemoteResponse<T>(
      outcome: 'error',
      message: 'something_went_wrong',
      data: null,
    );
  }

  factory RemoteResponse.exceptionOccurred(String message) {
    return RemoteResponse<T>(outcome: 'error', message: message, data: null);
  }

  factory RemoteResponse.withObject(T? obj) {
    return RemoteResponse<T>(outcome: 'success', message: "", data: obj);
  }
}
