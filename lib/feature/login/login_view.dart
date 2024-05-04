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
      () => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade400,
          elevation: 0,
          title: Text(
            title,
            style: themeData.value.text.appbarText,
          ),
        ),
        backgroundColor: Colors.deepPurple.shade200,
        body: Stack(
          children: [
            SafeArea(
              child: Form(
                key: controller.formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          themeController.changeTheme();
                        },
                        child: Text(
                          "Change Theme",
                          style: themeData.value.text.buttonText,
                        ),
                      ),
                      Icon(
                        Icons.my_library_music,
                        size: 100,
                        color: themeData.value.color.primary,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      // user name
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: controller.emailController,
                        obscureText: false,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: 'Username',
                        ),
                        onChanged: controller.onChangeUsername,
                        validator: controller.validatorUsername,
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      //password

                      TextFormField(
                        controller: controller.passwordController,
                        obscureText: !controller.showPassword.value,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: 'Password',
                          suffixIcon: GestureDetector(
                            onTap: controller.showHidePassword,
                            child: Icon(controller.showPassword.value
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                        ),
                        onChanged: controller.onChangePassword,
                        validator: controller.validatorPassword,
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
    );
  }
}
