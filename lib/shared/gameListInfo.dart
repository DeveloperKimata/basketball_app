import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:get/get.dart';
import 'package:practise_basket_app/model/Game.dart';
import 'package:practise_basket_app/model/Statistics.dart';
import 'package:practise_basket_app/shared/gameInfo.dart';

class gameListInfo extends StatefulWidget {
  const gameListInfo({Key? key}) : super(key: key);

  @override
  State<gameListInfo> createState() => _gameListInfoState();
}

class _gameListInfoState extends State<gameListInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal, Colors.greenAccent],
            begin: const FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,
          ),
        ),
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            Center(
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    ),
                  ),
                  Expanded(child: Container()),
                  const Text(
                    "Games",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            Expanded(
              child: OverflowBox(
                maxWidth: MediaQuery.of(context).size.width,
                child: MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: FutureBuilder(
                      future: ReadJsonData(),
                      builder: (BuildContext context,
                          AsyncSnapshot<List<Game>> snapshot) {
                        if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else if (snapshot.hasData) {
                          return ListView.builder(
                              itemCount: snapshot.data!.length,
                              // .toDouble()/2).toInt(),
                              itemBuilder: (_, i) {
                                // int a = 2*i;
                                // int b = 2*i +1;
                                return Row(
                                  children: [
                                    Container(
                                      width: 370,
                                      height: 100,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 20),
                                      decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Colors.white10,
                                              Colors.white,
                                            ],
                                            begin: Alignment.bottomLeft,
                                            end: Alignment.centerRight,
                                          ),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                              bottomLeft: Radius.circular(20),
                                              topLeft: Radius.circular(20)),
                                          boxShadow: [
                                            BoxShadow(
                                                offset: Offset(3, 5),
                                                blurRadius: 2,
                                                color: Colors.white),
                                          ]),
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 25, right: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    if (i == 0) {
                                                      Get.to(() =>
                                                      const game1());
                                                    } else if (i == 1) {
                                                      Get.to(() =>
                                                      const game2());
                                                    } else if(i == 2) {
                                                      Get.to(() =>
                                                      const game3());
                                                    }
                                                    else if (i == 3) {
                                                      Get.to(() =>
                                                      const game4());
                                                    } else if(i == 4){
                                                      Get.to(() =>
                                                      const game5());
                                                    }
                                                    else {
                                                      Get.to(() =>
                                                      const game6());
                                                    }
                                                  },
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Text(
                                                        snapshot
                                                            .data![i].id!,
                                                        style: const TextStyle(
                                                            fontSize: 20,
                                                            color:
                                                            Colors.black),
                                                      ),
                                                      Text(
                                                        snapshot.data![i].hFull_name! + " "+ "VS" + "\n "+ snapshot.data![i].vFull_name!,
                                                        style: const TextStyle(
                                                            fontSize: 20,
                                                            color:
                                                            Colors.black),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              });
                        } else {
                          return const CircularProgressIndicator();
                        }
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<List<Game>> ReadJsonData() async {
    final jsondata =
    await rootBundle.rootBundle.loadString('json/game.json');
    final List<dynamic> list = jsonDecode(jsondata);

    return list.map((e) => Game.fromJson(e)).toList();
  }
}
