import 'dart:ffi';
import 'dart:ui';

import 'package:demo/consts/colors.dart';
import 'package:demo/consts/text_style.dart';
import 'package:demo/themes/theme_controller.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:demo/feature/home/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scrollController = ScrollController();
  final controller = Get.find<HomeController>();
  final _nameController = TextEditingController();
  final _quantityController = TextEditingController();
  final _priceController = TextEditingController();
  final _colorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    final themeData = themeController.themeData;

    return Obx(
      () => Stack(
        children: [
          Scaffold(
            backgroundColor: themeData.value.color.boldBackground,
            appBar: AppBar(
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: bgColor,
                    ))
              ],
              leading: Icon(
                Icons.sort_rounded,
                color: bgColor,
              ),
              title: Text(
                "Music",
                style: ourStyle(),
              ),
            ),
            body: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: "Name",
                      ),
                    ),
                  ),
                  TextField(
                    controller: _quantityController,
                    decoration: InputDecoration(
                      labelText: "Number",
                    ),
                  ),
                  TextField(
                    controller: _priceController,
                    decoration: InputDecoration(
                      labelText: "Price",
                    ),
                  ),
                  TextField(
                    controller: _colorController,
                    decoration: InputDecoration(
                      labelText: "Color",
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      DatabaseReference postListRef =
                          FirebaseDatabase.instance.ref("products");

                      DatabaseReference newPostRef = postListRef.push();

                      newPostRef.set({
                        "name": _nameController.text,
                        "quantity": _quantityController.text,
                        "price": _priceController.text,
                        "color": _colorController.text,
                      }).then((value) {
                        Get.snackbar("Success", "Create product success");
                      }).catchError((error) {
                        Get.snackbar("Error",
                            "Create product error " + error.toString());
                      });
                    },
                    child: const Text(
                      "Create product",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
