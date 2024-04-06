import 'package:demo/models/signup_request.dart';
import 'package:demo/models/signup_response.dart';
import 'package:demo/network/apis/signup_apis.dart';

class SignUpReponsitory {
  Future<SignupResponseModel?> signup(SignupRequest signupRequest) async {
    final responseFromApi = await SignupApi().signup(signupRequest);
    return null;
  }
}
