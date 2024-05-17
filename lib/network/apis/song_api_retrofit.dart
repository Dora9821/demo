import 'package:demo/models/get_detail_track_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'song_api_retrofit.g.dart';

@RestApi(baseUrl: "https://api.deezer.com")
abstract class SongApiRetrofit {
  factory SongApiRetrofit(Dio dio, {String baseUrl}) = _SongApiRetrofit;

  @GET('/track/{id}')
  Future<DetailTrackResponse> getDetailTrack(@Path('id') String id);
}
