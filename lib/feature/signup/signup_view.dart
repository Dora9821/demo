import 'package:demo/consts/colors.dart';
import 'package:demo/consts/text_style.dart';
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

    return Container(
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
            "Sign up",
            style: ourStyle(),
          ),
        ),
        body: Stack(
          children: [
            SafeArea(
              child: SingleChildScrollView(
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      // TextButton(
                      //   onPressed: () {
                      //     themeController.changeTheme();
                      //   },
                      //   child: const Text("Change Theme"),
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                        ),
                      ),

                      const SizedBox(
                        height: 20,
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
