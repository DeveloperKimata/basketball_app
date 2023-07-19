import 'package:flutter/material.dart';
import 'package:get/get.dart';

class team extends StatelessWidget {
  const team({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Column(
          children: const [
            team1(),
            team2(),
            team3(),
            team4(),
            team5(),
            team6()
          ],
        )
      ),
    ) ;
  }
}

class team1 extends StatelessWidget {
  const team1({
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
      padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
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
              margin: const EdgeInsets.only(right: 210),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage(
                    "image/team1.png",
                  ),
                ),
              ),
            ),
            Container(
              width:MediaQuery.of(context).size.width,
              height: 400,
              margin: const EdgeInsets.only(left: 130,top:250),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "id: 14",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "abbreviation: LAL",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "city: Los Angeles",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "conference: West",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),

                  SizedBox(height: 20),
                  Text(
                    "division: pacific",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "full_name: Los Angeles Lakers",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ],
              ),
            )
    ]
    ),
      ),
    );
  }
}
class team2 extends StatelessWidget {
  const team2({
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
      padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
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
                margin: const EdgeInsets.only(right: 210),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(
                      "image/team2.png",
                    ),
                  ),
                ),
              ),
              Container(
                width:MediaQuery.of(context).size.width,
                height: 400,
                margin: const EdgeInsets.only(left: 130,top:250),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "id: 1",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "abbreviation: ATL",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "city: Atlanta",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "conference: East",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),

                    SizedBox(height: 20),
                    Text(
                      "division: Southeast",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "full_name: Atlanta Hawks",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ],
                ),
              )
            ]
        ),
      ),
    );
  }
}
class team3 extends StatelessWidget {
  const team3({
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
      padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
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
                margin: const EdgeInsets.only(right: 210),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(
                      "image/team3.png",
                    ),
                  ),
                ),
              ),
              Container(
                width:MediaQuery.of(context).size.width,
                height: 400,
                margin: const EdgeInsets.only(left: 130,top:250),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "id: 2",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "abbreviation: BOS",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "city: Boston",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "conference: East",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),

                    SizedBox(height: 20),
                    Text(
                      "division: Atlantic",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "full_name: Boston Celtics",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ],
                ),
              )
            ]
        ),
      ),
    );
  }
}
class team4 extends StatelessWidget {
  const team4({
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
      padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
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
                margin: const EdgeInsets.only(right: 210),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(
                      "image/team4.png",
                    ),
                  ),
                ),
              ),
              Container(
                width:MediaQuery.of(context).size.width,
                height: 400,
                margin: const EdgeInsets.only(left: 130,top:250),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "id: 16",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "abbreviation: MIA",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "city: Miami",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "conference: East",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),

                    SizedBox(height: 20),
                    Text(
                      "division: Southeast",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "full_name: Miami Heat",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ],
                ),
              )
            ]
        ),
      ),
    );
  }
}
class team5 extends StatelessWidget {
  const team5({
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
      padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
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
                margin: const EdgeInsets.only(right: 210),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(
                      "image/team5.png",
                    ),
                  ),
                ),
              ),
              Container(
                width:MediaQuery.of(context).size.width,
                height: 400,
                margin: const EdgeInsets.only(left: 130,top:250),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "id: 20",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "abbreviation: NYK",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "city: New York",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "conference: East",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),

                    SizedBox(height: 20),
                    Text(
                      "division: Atlantic",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "full_name: New York Knicks",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ],
                ),
              )
            ]
        ),
      ),
    );
  }
}
class team6 extends StatelessWidget {
  const team6({
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
      padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
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
                margin: const EdgeInsets.only(right: 210),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(
                      "image/team6.png",
                    ),
                  ),
                ),
              ),
              Container(
                width:MediaQuery.of(context).size.width,
                height: 400,
                margin: const EdgeInsets.only(left: 130,top:250),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "id: 10",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "abbreviation: GSW",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "city: Golden State",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "conference: West",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),

                    SizedBox(height: 20),
                    Text(
                      "division: pacific",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "full_name: Golden State Warriors",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ],
                ),
              )
            ]
        ),
      ),
    );
  }
}
