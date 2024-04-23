import 'package:demo/consts/colors.dart';
import 'package:demo/themes/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:demo/feature/signup/signup_controller.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignupController>();
    final themeController = Get.find<ThemeController>();
    final themeData = themeController.themeData;

    return Obx(
      () => Scaffold(
        appBar: AppBar(
          backgroundColor: themeData.value.color.lightBackground,
          title: Text(
            'Đăng ký',
            style: themeData.value.text.appbarText,
          ),
        ),
        backgroundColor: bgDarkColor,
        body: Stack(
          children: [
            SafeArea(
              child: SingleChildScrollView(
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          themeController.changeTheme();
                        },
                        child: const Text("Change Theme"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: TextFormField(
                          controller: controller.emailController,
                          decoration: const InputDecoration(
                            labelText: 'Username',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: TextFormField(
                          controller: controller.passwordController,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: controller.onSubmit,
                          child: const Text(
                            'Sign Up',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(vertical: 20),
                      //   child: TextFormField(
                      //     controller: controller.controllerCheckPass,
                      //     decoration: const InputDecoration(
                      //       labelText: 'Confirm Password',
                      //       border: OutlineInputBorder(),
                      //     ),
                      //     onChanged: controller.onChangeConfirmPassSignup,
                      //     validator: controller.valiatorConfirmPassSignup,
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(vertical: 20),
                      //   child: TextFormField(
                      //     controller: controller.controllerName,
                      //     decoration: const InputDecoration(
                      //       labelText: 'Họ và tên',
                      //       border: OutlineInputBorder(),
                      //     ),
                      //     onChanged: controller.onChangeName,
                      //     validator: controller.valiatorName,
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(vertical: 20),
                      //   child: TextFormField(
                      //     controller: controller.controllerAddress,
                      //     decoration: const InputDecoration(
                      //       labelText: 'Địa chỉ',
                      //       border: OutlineInputBorder(),
                      //     ),
                      //     onChanged: controller.onChangeAddress,
                      //     validator: controller.valiatorAddress,
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(vertical: 20),
                      //   child: TextFormField(
                      //     controller: controller.controllerGender,
                      //     decoration: const InputDecoration(
                      //       labelText: 'Giới tính',
                      //       border: OutlineInputBorder(),
                      //     ),
                      //     onChanged: controller.onChangeGender,
                      //     validator: controller.valiatorGender,
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Get.back();
                      //   },
                      //   child: const Text('Đăng ký'),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
