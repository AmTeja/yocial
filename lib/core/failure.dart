/// Failure class
/// This class is used to handle error in the application
class Failure {
  /// Failure constructor
  /// [message] is the error message
  /// [stackTrace] is the error stacktrace
  Failure({required this.message, required this.stackTrace});

  /// Error message
  final String message;

  /// Error code
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'Failure{message: $message, stack: $stackTrace}';
  }
}
