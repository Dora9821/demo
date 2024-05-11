import 'package:demo/models/get_chart_response.dart';
import 'package:demo/models/get_top_manga_response.dart';
import 'package:demo/models/home_models.dart';
import 'package:demo/network/apis/home_api.dart';
import 'package:demo/network/apis/home_api_retrofit.dart';
import 'package:demo/network/configs/data_state.dart';
import 'package:dio/dio.dart';

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

  Future<DataState<GetMusicChartResponse>> getMusicChart() async {
    final responseFromApi = await HomeApiRetrofit(Dio()).getMusicChart();

    if (responseFromApi.tracks != null) {
      return DataSuccess(data: responseFromApi);
    } else {
      return DataFailed(data: responseFromApi);
    }
  }
}
