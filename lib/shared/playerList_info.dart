import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:get/get.dart';
import 'package:practise_basket_app/model/player.dart';
import 'package:practise_basket_app/shared/playerInfo.dart';

class playerList_info extends StatefulWidget {
  const playerList_info({Key? key}) : super(key: key);

  @override
  State<playerList_info> createState() => _playerList_infoState();
}

class _playerList_infoState extends State<playerList_info> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 70, left: 30, right: 30),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.teal, Colors.greenAccent],
          begin: const FractionalOffset(0.0, 0.4),
          end: Alignment.topRight,
        ),
      ),
      child: Column(
        children: [
          Row(
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
                "Player list",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
            ],
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Expanded(child: OverflowBox(
                    maxWidth: MediaQuery.of(context).size.width,
                    child: MediaQuery.removePadding(
                      removeTop: true,
                      context: context,
                      child: FutureBuilder(
                          future: ReadJsonData(),
                          builder: (BuildContext context,AsyncSnapshot<List<player>> snapshot){
                            if(snapshot.hasError){
                              return Text('Error: ${snapshot.error}');
                            }else if(snapshot.hasData){
                              return ListView.builder(
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (_, i){
                                    // String y = '"snapshot.data![i].title1! + snapshot.data![i].title2!" + snapshot.data![i].team!';
                                    return Row(
                                      children: [
                                        Container(
                                          width: 370,
                                          height: 100,
                                          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                                              ]
                                          ),
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                left: 20, top: 25, right: 20),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        if(i == 0){
                                                          Get.to(() => const player1());
                                                        }else if(i == 1){
                                                          Get.to(() => const player2());
                                                        }else{
                                                          Get.to(() => const player3());
                                                        }
                                                      },
                                            child: Column(
                                              crossAxisAlignment:CrossAxisAlignment.start,
                                              children: [
                                                  Text(
                                                    snapshot.data![i].title1! + snapshot.data![i].title2!,
                                                    style: const TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.black
                                                    ),
                                                  ),
                                                  Text(
                                                    snapshot.data![i].team!,
                                                    style: const TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.black
                                                    ),
                                                  ),
                                              ],
                                            ),
                                            )
                                                  ],
                                                )

                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  }
                              );
                            }else{
                              return const CircularProgressIndicator();
                            }

                          }
                      ),
                    ),
                  ),),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Future<List<player>> ReadJsonData() async {
    final jsondata = await rootBundle.rootBundle.loadString('json/playerList.json');
    final List<dynamic> list = jsonDecode(jsondata);

    return list.map((e) => player.fromJson(e)).toList();
  }
}
