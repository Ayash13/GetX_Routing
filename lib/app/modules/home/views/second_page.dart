import 'package:coba_getx2/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('balik'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.white,
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'BottomSheet',
                            style: TextStyle(color: Colors.black, fontSize: 50),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Get.offAll(HomeView());
                            },
                            child: Text('Balik'),
                          ),
                        ],
                      ),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer);
              },
              child: Text('BottomSheet'),
            ),
            GestureDetector(
              onTap: () {
                Get.offAll(
                  HomeView(),
                );
              },
              child: SizedBox(
                height: 700,
                width: 400,
                child: Card(
                  elevation: 10,
                  color: Color.fromARGB(176, 114, 178, 230),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 100,
                              width: 100,
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(
                                    HomeView(),
                                  );
                                },
                                child: Card(
                                  color: Colors.blue,
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
