import 'package:demo/consts/text_style.dart';
import 'package:demo/themes/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:demo/feature/login/login_controller.dart';
import 'package:demo/router/router.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LoginController>();
    final themeController = Get.find<ThemeController>();
    final themeData = themeController.themeData;

    return Obx(
      () => Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade800.withOpacity(0.8),
              Colors.deepPurple.shade200.withOpacity(0.8),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              "Music App",
              style: ourStyle(),
            ),
          ),
          // appBar: AppBar(
          //   backgroundColor: Colors.transparent,
          //   elevation: 0,
          // ),
          // extendBodyBehindAppBar: true,
          body: Stack(
            children: [
              SafeArea(
                child: Form(
                  key: controller.formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // TextButton(
                        //   onPressed: () {
                        //     themeController.changeTheme();
                        //   },
                        //   child: Text(
                        //     "Change Theme",
                        //     style: themeData.value.text.buttonText,
                        //   ),
                        // ),
                        Icon(
                          Icons.my_library_music,
                          size: 100,
                          color: themeData.value.color.primary,
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        // user name
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: controller.emailController,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Username',
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.black),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            onChanged: controller.onChangeUsername,
                            validator: controller.validatorUsername,
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        //password

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: controller.passwordController,
                            obscureText: !controller.showPassword.value,
                            decoration: InputDecoration(
                              isDense: true,
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Password',
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.black),
                              suffixIcon: GestureDetector(
                                onTap: controller.showHidePassword,
                                child: Icon(controller.showPassword.value
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            onChanged: controller.onChangePassword,
                            validator: controller.validatorPassword,
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        // button login
                        Center(
                          child: ElevatedButton(
                            onPressed: controller.onSubmitLogin,
                            child: const Text(
                              'Sign In',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed(AppRouterNamed.signUp);
                            },
                            child: const Text(
                              'Sign up',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Obx(
                () => (controller.isLoading.value)
                    ? Container(
                        color: Colors.black.withOpacity(0.8),
                        child: const Center(
                          child: CircularProgressIndicator(
                            color: Colors.blue,
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              )
            ],
          ),
          // This trailing comma makes auto-formatting nicer for build methods.
        ),
      ),
    );
  }
}
