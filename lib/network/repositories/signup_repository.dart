import 'package:demo/models/signup_request.dart';
import 'package:demo/models/signup_response.dart';
import 'package:demo/network/apis/signup_apis.dart';
import 'package:demo/network/configs/data_state.dart';

class SignupRepository {
  Future<DataState<SignupResponseModel?>> signup(SignupRequest request) async {
    final responseFromApi = await SignupApi().signup(request);

    if (responseFromApi != null) {
      return DataSuccess(data: responseFromApi);
    } else {
      return DataFailed(data: responseFromApi);
    }
  }
}
