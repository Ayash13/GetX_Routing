import 'package:coba_getx2/app/modules/home/views/second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(
                  SecondPage(),
                );
              },
              child: Text('Pencet aku'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.showSnackbar(
                  GetSnackBar(
                    message: 'Tes123',
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: Text('SnackBar'),
            ),
          ],
        ),
      ),
    );
  }
}
