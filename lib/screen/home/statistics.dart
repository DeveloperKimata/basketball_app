import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:get/get.dart';
import 'package:practise_basket_app/model/Statistics.dart';
import 'package:practise_basket_app/screen/home/statisticInfo.dart';

class statistics extends StatefulWidget {
  const statistics({Key? key}) : super(key: key);

  @override
  State<statistics> createState() => _statisticsState();
}

class _statisticsState extends State<statistics> {
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
                  const Text(
                    "statistics",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Expanded(child: Container()),
                  const Icon(Icons.sports_basketball_sharp,
                      size: 40,
                      color: Colors.black45),
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
                          AsyncSnapshot<List<Statistics>> snapshot) {
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
                                                          const statistics1());
                                                    } else if (i == 1) {
                                                      Get.to(() =>
                                                          const statistics2());
                                                    } else if(i == 2) {
                                                      Get.to(() =>
                                                          const statistics3());
                                                    }
                                                    else if (i == 3) {
                                                    Get.to(() =>
                                                    const statistics4());
                                                    } else if(i == 4){
                                                    Get.to(() =>
                                                    const statistics5());
                                                    }
                                                    else {
                                                    Get.to(() =>
                                                    const statistics6());
                                                    }
                                                  },
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        snapshot
                                                            .data![i].game_id!,
                                                        style: const TextStyle(
                                                            fontSize: 20,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      Text(
                                                        snapshot.data![i].team!,
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
                                    // Row(
                                    //   children: [
                                    //     InkWell(
                                    //       onTap: (){
                                    //       },
                                    //       child: Container (
                                    //         width: (MediaQuery.of(context).size.width-90)/2,
                                    //         height: 170,
                                    //         margin:const EdgeInsets.only(left: 30, bottom: 15, top: 15),
                                    //         padding: const EdgeInsets.only(bottom: 5),
                                    //         decoration: BoxDecoration(
                                    //           color: Colors.black26,
                                    //           borderRadius: BorderRadius.circular(15),
                                    //           image: DecorationImage(
                                    //             image: AssetImage(
                                    //                 snapshot.data![b].img!
                                    //             ),
                                    //           ),
                                    //           boxShadow: const[
                                    //             BoxShadow(
                                    //                 blurRadius: 3,
                                    //                 offset: Offset(5, 5),
                                    //                 color: Colors.white10
                                    //             ),
                                    //             BoxShadow(
                                    //                 blurRadius: 3,
                                    //                 offset: Offset(-5, -5),
                                    //                 color: Colors.white10
                                    //             ),
                                    //           ],
                                    //         ),
                                    //         child: Center(
                                    //           child: Align(
                                    //             alignment: Alignment.bottomCenter,
                                    //             child: Text(
                                    //               snapshot.data![b].title!,
                                    //               style: const TextStyle(
                                    //                   fontSize: 20,
                                    //                   color: Colors.white
                                    //               ),
                                    //             ),
                                    //           ),
                                    //         ),
                                    //       ),
                                    //     ),
                                    //   ],
                                    // ),
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

  Future<List<Statistics>> ReadJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('json/statistic.json');
    final List<dynamic> list = jsonDecode(jsondata);

    return list.map((e) => Statistics.fromJson(e)).toList();
  }
}
