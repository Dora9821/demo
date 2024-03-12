// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SignupResponseModel {
  final String? status;
  final String? code;
  final String? message;

  SignupResponseModel({
    this.status,
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'code': code,
      'message': message,
    };
  }

  factory SignupResponseModel.fromMap(Map<String, dynamic> map) {
    return SignupResponseModel(
      status: map['status'] != null ? map['status'] as String : null,
      code: map['code'] != null ? map['code'] as String : null,
      message: map['message'] != null ? map['message'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SignupResponseModel.fromJson(String source) =>
      SignupResponseModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
