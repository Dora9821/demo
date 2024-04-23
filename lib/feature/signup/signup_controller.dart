import 'package:demo/feature/authentication/firebase_authentication.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SignupController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final showPassword = false.obs;
  final isLoading = false.obs;

  onSubmit() async {
    final result = await FirebaseAuthentication.signUpWithEmailAndPassWord(
      emailController.text,
      passwordController.text,
    );
    if (result) {
      Get.dialog(
        Dialog(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text("Signup Success"),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('OK'),
              ),
            ],
          ),
        ),
      );
    }
  }

  String? emailValidator(String? value) {
    if (GetUtils.isEmail(value ?? "")) {
      return null;
    }
    return "Enter valid Email";
  }
  // void onChangeUsernameSignup(value) {
  //   formKey.currentState?.validate();
  // }

  // String? valiatorUsernameSignup(value) {
  //   if ((value ?? '').isEmpty) {
  //     return 'Không được để trống';
  //   } else if ((value ?? '').length < 6) {
  //     return 'Username phải chứa tối thiểu 6 ký tự';
  //   } else {
  //     return null;
  //   }
  // }

  // void onChangePassSignup(value) {
  //   formKey.currentState?.validate();
  // }

  // String? valiatorPassSignup(value) {
  //   if ((value ?? '').isEmpty) {
  //     return 'Không được để trống';
  //   } else if ((value ?? '').length < 6) {
  //     return 'Username phải chứa tối thiểu 6 ký tự';
  //   } else {
  //     return null;
  //   }
  // }

  // void onChangeConfirmPassSignup(value) {
  //   formKey.currentState?.validate();
  // }

  // String? valiatorConfirmPassSignup(value) {
  //   if (controllerPassword.value != controllerCheckPass) {
  //     return 'Nhập lại mật khẩu chưa chính xác';
  //   } else {
  //     return null;
  //   }
  // }

  // void onChangeName(value) {
  //   formKey.currentState?.validate();
  // }

  // String? valiatorName(value) {
  //   if ((value ?? '').isEmpty) {
  //     return 'Không được để trống';
  //   }
  //   return null;
  // }

  // void onChangeAddress(value) {
  //   formKey.currentState?.validate();
  // }

  // String? valiatorAddress(value) {
  //   if ((value ?? '').isEmpty) {
  //     return 'Không được để trống';
  //   }
  //   return null;
  // }

  // void onChangeGender(value) {
  //   formKey.currentState?.validate();
  // }

  // String? valiatorGender(value) {
  //   if ((value ?? '').isEmpty) {
  //     return 'Không được để trống';
  //   }
  //   return null;
  // }
}
