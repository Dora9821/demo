import 'package:demo/models/get_detail_track_response.dart';
import 'package:demo/network/apis/song_api_retrofit.dart';
import 'package:demo/network/configs/data_state.dart';
import 'package:dio/dio.dart';

class SongRepository {
  Future<DataState<DetailTrackResponse>?> getTrackDetailData(String id) async {
    final responseFromApi = await SongApiRetrofit(Dio()).getDetailTrack(id);
    if (responseFromApi.link != null) {
      return DataSuccess(data: responseFromApi);
    }
    return DataFailed(data: responseFromApi);
  }
}
