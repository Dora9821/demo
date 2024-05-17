import 'package:demo/feature/widgets/seekbar.dart';
import 'package:demo/models/get_detail_track_response.dart';
import 'package:demo/network/configs/data_state.dart';
import 'package:demo/network/repositories/song_repository.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart' as rxdart;

enum GetTrackDetailDataState { loading, success, failed }

class SongPageController extends GetxController {
  final _getTrackDetailDataState = GetTrackDetailDataState.loading.obs;
  Rx<DetailTrackResponse?> detailTrackResponse = Rx(null);
  AudioPlayer audioPlayer = AudioPlayer();

  GetTrackDetailDataState get getTrackDetailDataState =>
      _getTrackDetailDataState.value;

  set getTrackDetailDataState(GetTrackDetailDataState value) =>
      _getTrackDetailDataState.value = value;

  void getTrackDetailData(String id) async {
    _getTrackDetailDataState.value = GetTrackDetailDataState.loading;
    SongRepository().getTrackDetailData(id).then((data) {
      if (data is DataSuccess) {
        detailTrackResponse.value = data?.data;
        getTrackDetailDataState = GetTrackDetailDataState.success;
        print(detailTrackResponse.value?.preview);
        audioPlayer.setAudioSource(
          ConcatenatingAudioSource(
            children: [
              AudioSource.uri(
                Uri.parse(detailTrackResponse.value?.preview ?? ""),
              ),
            ],
          ),
        );
      } else {
        getTrackDetailDataState = GetTrackDetailDataState.failed;
      }
    });
  }

  onDispose() {
    audioPlayer.dispose();
  }

  Stream<SeekBarData> get seekBarDataStream =>
      rxdart.Rx.combineLatest2<Duration, Duration?, SeekBarData>(
          audioPlayer.positionStream, audioPlayer.durationStream, (
        Duration position,
        Duration? duration,
      ) {
        return SeekBarData(
          position,
          duration ?? Duration.zero,
        );
      });
}
