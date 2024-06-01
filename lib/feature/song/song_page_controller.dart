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
  Rx<AudioPlayer> audioPlayer = AudioPlayer().obs;

  GetTrackDetailDataState get getTrackDetailDataState =>
      _getTrackDetailDataState.value;
  Rx<String> currentID = "".obs;

  set getTrackDetailDataState(GetTrackDetailDataState value) =>
      _getTrackDetailDataState.value = value;

  void getTrackDetailData(String id) async {
    if (currentID.value == id) {
      return;
    } else {
      currentID.value = id;
    }

    _getTrackDetailDataState.value = GetTrackDetailDataState.loading;
    SongRepository().getTrackDetailData(id).then((data) {
      if (data is DataSuccess) {
        detailTrackResponse.value = data?.data;
        getTrackDetailDataState = GetTrackDetailDataState.success;

        audioPlayer.value.setAudioSource(
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

  // onDispose() {
  //   audioPlayer.value.dispose();
  // }

  Stream<SeekBarData> get seekBarDataStream =>
      rxdart.Rx.combineLatest2<Duration, Duration?, SeekBarData>(
          audioPlayer.value.positionStream, audioPlayer.value.durationStream, (
        Duration position,
        Duration? duration,
      ) {
        return SeekBarData(
          position,
          duration ?? Duration.zero,
        );
      });
}
