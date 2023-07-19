import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:get/get.dart';
import 'package:practise_basket_app/model/Info.dart';
import 'package:practise_basket_app/screen/home/team.dart';
import 'package:practise_basket_app/shared/gameListInfo.dart';
import 'package:practise_basket_app/shared/playerList_info.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List info = [];
  _initData(){
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value){
      // setState((){
        info = json.decode(value);
      // });

    });
  }
  @override
  void initState(){
    super.initState();
    _initData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  "BasketApp",
                  style: TextStyle(fontSize: 30, color: Colors.black87),
                ),
                Expanded(child: Container()),
                const Icon(Icons.sports_basketball_sharp,
                    size: 40,
                    color: Colors.black45),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                const Text(
                  "Players",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black87),
                ),
                Expanded(child: Container()),
                const SizedBox(width: 5,),
                InkWell(
                  onTap: (){
                    Get.to(()=>const playerList_info());
                  },
                  child:
                  const Text(
                    "Details",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue),
                  ),
                ),

            ],),
            const SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors:[
                  Colors.teal,
                  Colors.greenAccent,
                ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(80),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5, 10),
                    blurRadius: 10,
                    color: Colors.greenAccent
                  )
    ]
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "NBA Games",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 5,),
                    const Text(
                      "Boston Celtics",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 5,),
                    const Text(
                      "and Charlotte Hornets",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.date_range_rounded,
                              size: 20,
                              color: Colors.white,),
                            SizedBox(width: 10,),
                            Text(
                              "2019-01-30T00:00:00.000Z",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        InkWell(
                          onTap: (){
                            Get.to(()=>const gameListInfo());
                          },
                       child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.teal,
                                blurRadius: 10,
                                offset: Offset(4, 8)
                              )
                            ]
                          ),
                          child: const Icon(Icons.play_circle_fill,
                            size: 60,
                            color: Colors.white,),
                        ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height:5),
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top:30),
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage(
                          "image/crd2.jpg"
                        ),
                        fit: BoxFit.fill
                      ),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 40,
                          offset: Offset(8, 10),
                          color: Colors.lightBlueAccent
                        ),
                        BoxShadow(
                            blurRadius: 10,
                            offset: Offset(-8, -10),
                            color: Colors.lightBlueAccent
                        )
                      ]
                    ),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(right: 200, bottom: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage(
                                "image/card3.png"
                            ),
                        ),
                    ),
                  ),
                  Container(
                    width:double.maxFinite,
                    height: 100,
                    margin: const EdgeInsets.only(left: 150, top: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Enjoy the game.",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                        const SizedBox(height: 10),
                        RichText(text: const TextSpan(
                          text: "Here your.\n",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                          ),
                          children: [
                            TextSpan(
                              text: "Stick to your team."
                            ),
                          ]
                        ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children:const [
                Text("Teams",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
                ),)
              ],
            ),
            Expanded(child: OverflowBox(
              maxWidth: MediaQuery.of(context).size.width,
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: FutureBuilder(
                    future: ReadJsonData(),
                    builder: (BuildContext context,AsyncSnapshot<List<Info>> snapshot) {
                      if(snapshot.hasError){
                        return Text('Error: ${snapshot.error}');
                      }else if(snapshot.hasData){
                      return ListView.builder(
                          itemCount: (snapshot.data!.length.toDouble() / 2)
                              .toInt(),
                          itemBuilder: (_, i) {
                            int a = 2 * i;
                            int b = 2 * i + 1;
                            return Material(
                              child: Row(
                                children: [
                              InkWell(
                              onTap: () {
                                if(snapshot.data![a].img! == "image/team1.png"){
                              Get.to(() => const team1());
                                }else if(snapshot.data![a].img! == "image/team3.png"){
                              Get.to(() => const team3());
                                }else{
                              Get.to(() => const team5());
                                }
                              },
                               child:   Container(
                                    width: (MediaQuery
                                        .of(context)
                                        .size
                                        .width - 90) / 2,
                                    height: 170,
                                    margin: const EdgeInsets.only(
                                        left: 30, bottom: 15, top: 15),
                                    padding: const EdgeInsets.only(bottom: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            snapshot.data![a].img!
                                        ),
                                      ),
                                      boxShadow: const[
                                        BoxShadow(
                                            blurRadius: 3,
                                            offset: Offset(5, 5),
                                            color: Colors.greenAccent
                                        ),
                                        BoxShadow(
                                            blurRadius: 3,
                                            offset: Offset(-5, -5),
                                            color: Colors.greenAccent
                                        ),
                                      ],
                                    ),
                                  ),
                            ),
                                InkWell(
                                        onTap: () {
                                          if(snapshot.data![b].img! == "image/team2.png"){
                                            Get.to(() => const team2());
                                          }else if(snapshot.data![b].img! == "image/team2.png"){
                                            Get.to(() => const team4());
                                          }else{
                                            Get.to(() => const team6());
                                          }
                                        },
                                        child: Container(
                                          width: (MediaQuery
                                              .of(context)
                                              .size
                                              .width - 90) / 2,
                                          height: 170,
                                          margin: const EdgeInsets.only(
                                              left: 30, bottom: 15, top: 15),
                                          padding: const EdgeInsets.only(
                                              bottom: 5),
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.circular(
                                                50),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  snapshot.data![b].img!
                                              ),
                                            ),
                                            boxShadow: const[
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: Offset(5, 5),
                                                  color: Colors.greenAccent
                                              ),
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: Offset(-5, -5),
                                                  color: Colors.greenAccent
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                ],
                              ),
                            );
                                  }
                              );
                            }else{
                              return const CircularProgressIndicator();
                            }

                          }
                      )
                    )
              ),
            ),
  ]
            )
              ),
    );
  }
  Future<List<Info>>ReadJsonData() async{
    final jsondata = await rootBundle.rootBundle.loadString('json/info.json');
    final List<dynamic> list = jsonDecode(jsondata);

    return list.map((e) => Info.fromJson(e)).toList();
  }
}
