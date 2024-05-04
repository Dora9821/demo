import 'package:demo/feature/home/home_binding.dart';
import 'package:demo/feature/login/login_binding.dart';
import 'package:demo/feature/login/login_view.dart';
import 'package:demo/feature/home/home_view.dart';
import 'package:demo/feature/playlist/playlist_page.dart';
import 'package:demo/feature/setting/setting_page_view.dart';
import 'package:demo/feature/signup/signup_view.dart';
import 'package:demo/feature/song/song_page_view.dart';
import 'package:get/get.dart';

class AppRouter {
  static final routes = [
    // Login
    GetPage(
      name: AppRouterNamed.login,
      page: () => const LoginPage(
        title: '',
      ),
      binding: LoginBinding(),
    ),
    // Signup
    GetPage(
      name: AppRouterNamed.signUp,
      page: () => const SignUpPage(title: '/signup'),
    ),
    GetPage(
      name: AppRouterNamed.homepage,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouterNamed.song,
      page: () => const SongPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouterNamed.playlist,
      page: () => const PlaylistScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouterNamed.setting,
      page: () => const SettingPage(),
      binding: HomeBinding(),
    ),
  ];
}

class AppRouterNamed {
  static const login = '/';
  static const signUp = '/signup';
  static const homepage = '/home';
  static const song = '/song';
  static const playlist = '/playlist';
  static const setting = '/setting';
}
