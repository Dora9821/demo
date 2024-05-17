import 'package:demo/feature/song/song_page_controller.dart';
import 'package:get/get.dart';

class SongPageBingding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SongPageController>(() => SongPageController());
  }
}
