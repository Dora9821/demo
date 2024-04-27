import 'package:demo/models/get_top_manga_response.dart';
import 'package:demo/network/configs/data_state.dart';
import 'package:demo/network/repositories/home_repository.dart';
import 'package:get/get.dart';

enum GetTopMangaStatus {
  initial,
  isLoading,
  loaded,
  failed,
  loadmore,
}

enum GetMusicChartStatus {
  initial,
  isLoading,
  loaded,
  failed,
  loadmore,
}

class HomeController extends GetxController {
  final listMangaItem = <MangaItem?>[].obs;
  final getTopMangaStatus = GetMusicChartStatus.initial.obs;
  final currentPage = 0.obs;

  void getTopMangaResponse() async {
    currentPage.value++;
    if (currentPage.value != 1) {
      getTopMangaStatus.value = GetMusicChartStatus.loadmore;
    } else {
      getTopMangaStatus.value = GetMusicChartStatus.isLoading;
    }

    final getTopMangaResponse = await HomeRepository().getTopManga(
      page: currentPage.value,
    );

    if (getTopMangaResponse is DataSuccess) {
      listMangaItem.addAll(getTopMangaResponse.data?.data ?? []);
      getTopMangaStatus.value = GetMusicChartStatus.loaded;
    }
    if (getTopMangaResponse is DataFailed) {
      getTopMangaStatus.value = GetMusicChartStatus.failed;
    }
  }
}
