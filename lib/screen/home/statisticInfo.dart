import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:get/get.dart';
import 'package:practise_basket_app/model/player.dart';

class statisticInfo extends StatefulWidget {
  const statisticInfo({Key? key}) : super(key: key);

  @override
  State<statisticInfo> createState() => _statisticInfoState();
}

class _statisticInfoState extends State<statisticInfo> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children:const [
          statistics1(),
          statistics2(),
          statistics3(),
          statistics4(),
          statistics5(),
          statistics6()
        ],
      ),
    );
  }
}

class statistics1 extends StatelessWidget {
  const statistics1({
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
                  child: const Text("Back",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width:MediaQuery.of(context).size.width,
              height: 400,
              margin: const EdgeInsets.only(left: 100,top:290),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "id: 1037720",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Player:Rod Strickland",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    " game_id: 45503",
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
                    "turnover: 1",
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
class statistics2 extends StatelessWidget {
  const statistics2({
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
                  child: const Text("Back",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width:MediaQuery.of(context).size.width,
              height: 400,
              margin: const EdgeInsets.only(left: 100,top:290),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "id: 1037720",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Player:Rod Strickland",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    " game_id: 45503",
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
                    "turnover: 1",
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
class statistics3 extends StatelessWidget {
  const statistics3({
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
                  child: const Text("Back",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width:MediaQuery.of(context).size.width,
              height: 400,
              margin: const EdgeInsets.only(left: 100,top:290),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "id: 1037720",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Player:Rod Strickland",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    " game_id: 45503",
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
                    "turnover: 1",
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
class statistics4 extends StatelessWidget {
  const statistics4({
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
                  child: const Text("Back",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width:MediaQuery.of(context).size.width,
              height: 400,
              margin: const EdgeInsets.only(left: 100,top:290),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "id: 1037720",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Player:Rod Strickland",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    " game_id: 45503",
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
                    "turnover: 1",
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
class statistics5 extends StatelessWidget {
  const statistics5({
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
                  child: const Text("Back",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width:MediaQuery.of(context).size.width,
              height: 400,
              margin: const EdgeInsets.only(left: 100,top:290),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "id: 1037720",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Player:Rod Strickland",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    " game_id: 45503",
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
                    "turnover: 1",
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
class statistics6 extends StatelessWidget {
  const statistics6({
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
                  child: const Text("Back",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width:MediaQuery.of(context).size.width,
              height: 400,
              margin: const EdgeInsets.only(left: 100,top:290),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "id: 1037720",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Player:Rod Strickland",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    " game_id: 45503",
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
                    "turnover: 1",
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
