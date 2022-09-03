class IPDetailsError {
  bool? error;
  String? reason;
  String? message;

  IPDetailsError({this.error, this.reason, this.message});

  IPDetailsError.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    reason = json['reason'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['error'] = error;
    data['reason'] = reason;
    data['message'] = message;
    return data;
  }
}
