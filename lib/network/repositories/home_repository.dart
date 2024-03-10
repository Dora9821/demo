import 'package:demo/models/get_top_manga_response.dart';
import 'package:demo/network/apis/home_api.dart';
import 'package:demo/network/configs/data_state.dart';

class HomeRepository {
  Future<DataState<GetTopMangaResponse?>> getTopManga({
    int page = 1,
    int perPage = 10,
  }) async {
    final responseFromApi = await HomeApi().getTopManga(
      perPage: perPage,
      page: page,
    );

    if (responseFromApi != null) {
      return DataSuccess(data: responseFromApi);
    } else {
      return DataFailed(data: responseFromApi);
    }
  }
}