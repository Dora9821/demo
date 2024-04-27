// import 'dart:ffi';
// import 'dart:ui';

// import 'package:demo/consts/colors.dart';
// import 'package:demo/consts/text_style.dart';
// import 'package:demo/feature/player/player_controller.dart';
// import 'package:demo/feature/player/player_controller.dart';
// import 'package:demo/themes/theme_controller.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';
// import 'package:demo/feature/home/home_controller.dart';
// import 'package:get/get.dart';
// import 'package:on_audio_query/on_audio_query.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final _scrollController = ScrollController();
//   final controller = Get.find<HomeController>();
//   final _nameController = TextEditingController();
//   final _quantityController = TextEditingController();
//   final _priceController = TextEditingController();
//   final _colorController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     final themeController = Get.find<ThemeController>();
//     final themeData = themeController.themeData;
//     var controller = Get.put(PlayerController());

//     return Scaffold(
//         backgroundColor: bgDarkColor,
//         appBar: AppBar(
//           backgroundColor: bgDarkColor,
//           actions: [
//             IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Icons.search,
//                   color: whiteColor,
//                 ))
//           ],
//           leading: const Icon(
//             Icons.sort_rounded,
//             color: whiteColor,
//           ),
//           title: Text(
//             "Music",
//             style: ourStyle(),
//           ),
//         ),
//         body: FutureBuilder<List<SongModel>>(
//             future: controller.audioQuery.querySongs(
//                 ignoreCase: true,
//                 orderType: OrderType.ASC_OR_SMALLER,
//                 sortType: null,
//                 uriType: UriType.EXTERNAL),
//             builder: (BuildContext context, snapshot) {
//               if (snapshot.data == null) {
//                 return Center(
//                   child: CircularProgressIndicator(),
//                 );
//               } else if (snapshot.data!.isEmpty) {
//                 return const Center(
//                   child: Text(
//                     "No song found",
//                     style: TextStyle(
//                         fontSize: 18,
//                         color: whiteColor,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 );
//               }
//             }
//             return ;),);
//   }
// }








        // body: Center(
        //   child: Column(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: TextField(
        //           controller: _nameController,
        //           decoration: InputDecoration(
        //             labelText: "Name",
        //           ),
        //         ),
        //       ),
        //       TextField(
        //         controller: _quantityController,
        //         decoration: InputDecoration(
        //           labelText: "Number",
        //         ),
        //       ),
        //       TextField(
        //         controller: _priceController,
        //         decoration: InputDecoration(
        //           labelText: "Price",
        //         ),
        //       ),
        //       TextField(
        //         controller: _colorController,
        //         decoration: InputDecoration(
        //           labelText: "Color",
        //         ),
        //       ),
        //       TextButton(
        //         onPressed: () {
        //           DatabaseReference postListRef =
        //               FirebaseDatabase.instance.ref("products");

        //           DatabaseReference newPostRef = postListRef.push();

        //           newPostRef.set({
        //             "name": _nameController.text,
        //             "quantity": _quantityController.text,
        //             "price": _priceController.text,
        //             "color": _colorController.text,
        //           }).then((value) {
        //             Get.snackbar("Success", "Create product success");
        //           }).catchError((error) {
        //             Get.snackbar("Error",
        //                 "Create product error " + error.toString());
        //           });
        //         },
        //         child: const Text(
        //           "Create product",
        //         ),
        //       ),
        //     ],
        //   ),
        // ),