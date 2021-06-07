class FailureResult {
  String? message;
  bool? boolResult;
  FailureResult({
    this.message,
    this.boolResult,
  });

  // TODO - Create user friendly error message
  static FailureResult errorResult(String error) {
    FailureResult _result = FailureResult();

    switch (error) {
      case "e":
        break;
      default:
        _result.message = "";
        _result.boolResult = false;
    }

    return _result;
  }
}
