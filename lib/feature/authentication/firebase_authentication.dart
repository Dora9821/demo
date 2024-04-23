import 'package:demo/feature/home/home_arguments.dart';
import 'package:demo/router/router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirebaseAuthentication {
  FirebaseAuthentication._();

  static Future<void> signInWithEmailAndPassWord(
      String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      if (credential.user != null) {
        Get.toNamed(AppRouterNamed.homepage,
            arguments: HomeArguments(username: email, password: password));
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.dialog(
          AlertDialog(
            title: const Text('Error'),
            content: const Text('No user found for that email.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      } else if (e.code == 'wrong-password') {
        Get.dialog(
          AlertDialog(
            title: const Text('Error'),
            content: const Text('Wrong password for that user.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      } else {
        Get.dialog(
          AlertDialog(
            title: const Text('Error'),
            content: Text(e.message ?? "Something went wrong..."),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    } catch (e) {
      Get.dialog(
        AlertDialog(
          title: const Text('Error'),
          content: Text(e.toString()),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  static Future<bool> signUpWithEmailAndPassWord(
      String email, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (credential.credential != null) {
        FirebaseAuth.instance.signInWithCredential(credential.credential!);
        Get.toNamed(AppRouterNamed.homepage);
        return true;
      } else {
        return false;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.dialog(
          AlertDialog(
            title: const Text('Error'),
            content: const Text('The password provided is too weak.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      } else if (e.code == 'email-already-in-use') {
        Get.dialog(
          AlertDialog(
            title: const Text('Error'),
            content: const Text('The account already exists for that email.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      } else {
        Get.dialog(
          AlertDialog(
            title: const Text('Error'),
            content: Text(e.message ?? "Error"),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    } catch (e) {
      Get.dialog(
        AlertDialog(
          title: const Text('Error'),
          content: Text(e.toString()),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
    return false;
  }
}
