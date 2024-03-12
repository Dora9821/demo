import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ControllerSignUp extends GetxController {
  TextEditingController controllerUsername = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerCheckPass = TextEditingController();
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerAddress = TextEditingController();
  TextEditingController controllerGender = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void onChangeUsernameSignup(value) {
    formKey.currentState?.validate();
  }

  String? valiatorUsernameSignup(value) {
    if ((value ?? '').isEmpty) {
      return 'Không được để trống';
    } else if ((value ?? '').length < 6) {
      return 'Username phải chứa tối thiểu 6 ký tự';
    } else {
      return null;
    }
  }

  void onChangePassSignup(value) {
    formKey.currentState?.validate();
  }

  String? valiatorPassSignup(value) {
    if ((value ?? '').isEmpty) {
      return 'Không được để trống';
    } else if ((value ?? '').length < 6) {
      return 'Username phải chứa tối thiểu 6 ký tự';
    } else {
      return null;
    }
  }

  void onChangeConfirmPassSignup(value) {
    formKey.currentState?.validate();
  }

  String? valiatorConfirmPassSignup(value) {
    if (controllerPassword.value != controllerCheckPass) {
      return 'Nhập lại mật khẩu chưa chính xác';
    } else {
      return null;
    }
  }

  void onChangeName(value) {
    formKey.currentState?.validate();
  }

  String? valiatorName(value) {
    if ((value ?? '').isEmpty) {
      return 'Không được để trống';
    }
    return null;
  }

  void onChangeAddress(value) {
    formKey.currentState?.validate();
  }

  String? valiatorAddress(value) {
    if ((value ?? '').isEmpty) {
      return 'Không được để trống';
    }
    return null;
  }

  void onChangeGender(value) {
    formKey.currentState?.validate();
  }

  String? valiatorGender(value) {
    if ((value ?? '').isEmpty) {
      return 'Không được để trống';
    }
    return null;
  }
}
