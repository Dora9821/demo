import 'package:demo/models/home_models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api_retrofit.g.dart';

@RestApi(baseUrl: "https://api.deezer.com")
abstract class HomeApiRetrofit {
  factory HomeApiRetrofit(Dio dio, {String baseUrl}) = _HomeApiRetrofit;

  @GET('/chart')
  Future<MusicChartResponse> getMusicChart();
}
