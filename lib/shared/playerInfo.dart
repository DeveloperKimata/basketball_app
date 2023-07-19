
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class playerInfo extends StatefulWidget {
  const playerInfo({Key? key}) : super(key: key);

  @override
  State<playerInfo> createState() => _playerInfoState();
}

class _playerInfoState extends State<playerInfo> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children:const [
          player1(),
          player2(),
          player3(),
        ],
      ),
    );
  }
}

class player1 extends StatelessWidget {
  const player1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
      gradient: LinearGradient(
      colors: [Colors.white, Colors.greenAccent],
      begin: const FractionalOffset(0.0, 0.4),
    end: Alignment.topRight,
    ),
      ),
      height: 1000,
      padding: const EdgeInsets.only(left: 30, top: 70, right: 30),
      width: MediaQuery.of(context).size.width,
      child: Material(
        color: Colors.transparent,
        child: Stack(
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
                            ],
                          ),
                          Container(
                            //height: 100,
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.only(right: 140),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: AssetImage(
                                  "image/jabari.png",
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width:MediaQuery.of(context).size.width,
                            height: 400,
                            margin: const EdgeInsets.only(left: 210,top:290),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                 Text(
                            "id: 47",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "First_Name:Jabari",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                                SizedBox(height: 20),
                                 Text(
                                   "LastName: Bird",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                                SizedBox(height: 20),
                                 Text(
                                   "Team: Boston Celtics",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),

                                SizedBox(height: 20),
                                Text(
                                  "Height: 175.0cm",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Position: G",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
      ),

    );
  }
}
class player2 extends StatelessWidget {
  const player2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.greenAccent],
          begin: const FractionalOffset(0.0, 0.4),
          end: Alignment.topRight,
        ),
      ),
      height: 1000,
      padding: const EdgeInsets.only(left: 30, top: 70, right: 30),
      width: MediaQuery.of(context).size.width,
      child: Material(
        color: Colors.transparent,
        child: Stack(
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
            Container(
              //height: 100,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(right: 160),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage(
                    "image/marshon.png",
                  ),
                ),
              ),
            ),
            Container(
              width:MediaQuery.of(context).size.width,
              height: 400,
              margin: const EdgeInsets.only(left: 180,top:280),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "id: 67",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "First_Name:Marshon",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "LastName: Brooks",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Team: Memphis Grizzlies",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),

                  SizedBox(height: 20),
                  Text(
                    "Height: 175.0cm",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Position: G",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
class player3 extends StatelessWidget {
  const player3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blueGrey, Colors.white],
          begin: const FractionalOffset(0.0, 0.4),
          end: Alignment.topRight,
        ),
      ),
      height: 1000,
      padding: const EdgeInsets.only(left: 30, top: 70, right: 30),
      width: MediaQuery.of(context).size.width,
      child: Material(
        color: Colors.transparent,
        child: Stack(
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
            Container(
              //height: 100,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage(
                    "image/ron.png",
                  ),
                ),
              ),
            ),
            Container(
              width:MediaQuery.of(context).size.width,
              height: 400,
              margin: const EdgeInsets.only(left: 200,top:280),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "id: 25",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "First_Name:Ron",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "LastName: Baker",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Team: New York Knicks",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),

                  SizedBox(height: 20),
                  Text(
                    "Height: 175.0cm",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Position: G",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
