import 'package:demo/models/login_request.dart';
import 'package:demo/models/login_response.dart';
import 'package:demo/network/apis/login_apis.dart';
import 'package:demo/network/configs/data_state.dart';

class LoginRepository {
  Future<DataState<LoginResponseModel?>> login(LoginRequest request) async {
    final responseFromApi = await LoginApi().login(request);

    if (responseFromApi != null) {
      return DataSuccess(data: responseFromApi);
    } else {
      return DataFailed(data: responseFromApi);
    }
  }
}