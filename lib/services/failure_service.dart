class Result {
  bool? boolResult;
  String? eMessage;
  String? eCode;
  String? error;
  String? type;
  Result({
    this.boolResult,
    this.eMessage,
    this.eCode,
    this.error,
    this.type,
  });
  @override
  String toString() {
    return 'Result(boolResult: $boolResult, eMessage: $eMessage, eCode: $eCode, error: $error, type: $type)';
  }
}

class FailureService {
  static Result result = Result();
  
  // TODO - Create user friendly error message
  static Result errorResult(e) {
    switch (e.code) {
      case "invalid-email":
        result.boolResult = false;
        result.eCode = e.code;
        result.eMessage = e.message;
        result.type = e.runtimeType.toString();
        result.error = "Email address is badly formatted";
        break;
      case "wrong-password":
        result.boolResult = false;
        result.eCode = e.code;
        result.eMessage = e.message;
        result.type = e.runtimeType.toString();
        result.error = "The password is incorrect.";
        break;
      default:
        result.boolResult = false;
        result.eCode = e.code;
        result.eMessage = e.message;
        result.type = e.runtimeType.toString();
        result.error = "${e.code} || ${e.message}";
    }

    return result;
  }
}
