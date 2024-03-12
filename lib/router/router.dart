import 'package:demo/feature/home/home_binding.dart';
import 'package:demo/feature/login/login_binding.dart';
import 'package:demo/feature/login/login_view.dart';
import 'package:demo/feature/home/home_view.dart';
import 'package:demo/signup/signup_view.dart';
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
  ];
}

class AppRouterNamed {
  static const login = '/';
  static const signUp = '/signup';
  static const homepage = '/home';
}
