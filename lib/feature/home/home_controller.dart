// ignore_for_file: unused_import

import 'package:demo/models/get_chart_response.dart';
import 'package:demo/models/get_top_manga_response.dart';
import 'package:demo/models/home_models.dart';
import 'package:demo/network/configs/data_state.dart';
import 'package:demo/network/repositories/home_repository.dart';
import 'package:flutter/material.dart';
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

enum GetMusicPlaylistStatus {
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
  final getMusicChartStatus = GetMusicChartStatus.initial.obs;
  final listTrackItem = <TrackDetailData?>[].obs;
  final getMusicPlaylistStatus = GetMusicPlaylistStatus.initial.obs;
  late PageController pageController;

  @override
  void getPlaylistMusic() async {
    getMusicChartStatus.value = GetMusicChartStatus.isLoading;
    final getMusicChartResponse = await HomeRepository().getMusicChart();
    if (getMusicChartResponse is DataSuccess) {
      listTrackItem.addAll(getMusicChartResponse.data.tracks?.data ?? []);
      getMusicChartStatus.value = GetMusicChartStatus.loaded;
    }
    if (getMusicChartResponse is DataFailed) {
      getMusicChartStatus.value = GetMusicChartStatus.failed;
    }
  }

  void getChartMusic() async {
    getMusicChartStatus.value = GetMusicChartStatus.isLoading;
    final getMusicChartResponse = await HomeRepository().getMusicChart();
    if (getMusicChartResponse is DataSuccess) {
      listTrackItem.addAll(getMusicChartResponse.data.tracks?.data ?? []);
      getMusicChartStatus.value = GetMusicChartStatus.loaded;
    }
    if (getMusicChartResponse is DataFailed) {
      getMusicChartStatus.value = GetMusicChartStatus.failed;
    }
  }
  // void getTopMangaResponse() async {
  //   currentPage.value++;
  //   if (currentPage.value != 1) {
  //     getTopMangaStatus.value = GetMusicChartStatus.loadmore;
  //   } else {
  //     getTopMangaStatus.value = GetMusicChartStatus.isLoading;
  //   }

  //   final getTopMangaResponse = await HomeRepository().getTopManga(
  //     page: currentPage.value,
  //   );

  //   if (getTopMangaResponse is DataSuccess) {
  //     listMangaItem.addAll(getTopMangaResponse.data?.data ?? []);
  //     getTopMangaStatus.value = GetMusicChartStatus.loaded;
  //   }
  //   if (getTopMangaResponse is DataFailed) {
  //     getTopMangaStatus.value = GetMusicChartStatus.failed;
  //   }
  // }
}
