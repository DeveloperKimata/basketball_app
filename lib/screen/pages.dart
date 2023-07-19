import 'package:flutter/material.dart';
import 'package:practise_basket_app/screen/home/statistics.dart';
import 'home/homePage.dart';

class pages extends StatefulWidget {
  const pages({Key? key}) : super(key: key);

  @override
  State<pages> createState() => _pagesState();
}

class _pagesState extends State<pages> {
  int _selectedIndex = 0;
  List<Widget> pages = <Widget>[

    const homePage(),
    const statistics(),
  ];
  void _onIteamTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey,
          selectedItemColor:
          Theme.of(context).textSelectionTheme.selectionColor,
          currentIndex: _selectedIndex,
          onTap: _onIteamTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_basketball),
              label: 'Games',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_sharp),
              label: 'Statistics',
            ),
          ],
        ),
      ),
    );
  }
}
