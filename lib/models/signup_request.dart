import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class SignupRequest {
  final String usernameSignup;
  final String passSignup;
  final String confirmPassSignup;
  final String nameSignup;
  final String addressSignup;
  final String genderSignup;

  SignupRequest({
    required this.usernameSignup,
    required this.passSignup,
    required this.confirmPassSignup,
    required this.nameSignup,
    required this.addressSignup,
    required this.genderSignup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'usernameSignup': usernameSignup,
      'passSignup': passSignup,
      'confirmPassSignup': confirmPassSignup,
      'nameSignup': nameSignup,
      'addressSignup': addressSignup,
      'genderSignup': genderSignup,
    };
  }

  factory SignupRequest.fromMap(Map<String, dynamic> map) {
    return SignupRequest(
      usernameSignup: map['usernameSignup'] as String,
      passSignup: map['passSignup'] as String,
      confirmPassSignup: map['confirmPassSignup'] as String,
      nameSignup: map['nameSignup'] as String,
      addressSignup: map['addressSignup'] as String,
      genderSignup: map['genderSignup'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SignupRequest.fromJson(String source) =>
      SignupRequest.fromMap(json.decode(source) as Map<String, dynamic>);
}
