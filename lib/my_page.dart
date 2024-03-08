
import 'package:demo_f/Screen/Home/Home_Screens.dart';
import 'package:demo_f/Screen/Profile/Profile_Screens.dart';
import 'package:demo_f/Screen/Search/Search_Screnns.dart';
import 'package:flutter/material.dart';


class MyPage extends StatefulWidget{
  const MyPage({Key? key}) : super(key: key);


  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage>{
  final List<Widget> _Screens = [
    const HomeScreen(),
    const SearchScreen(),
    const ProfileScreen()
  ];
  int _selectedIndex = 0;
  _changeTab(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context){
    return  Scaffold(
    appBar: AppBar(
      title: const Text("T2207A",
        style: TextStyle(color: Colors.red),

      ) ,
      backgroundColor: Colors.orange,
    ),
    body: _Screens[_selectedIndex],
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.black45,
    onTap: (index)=> _changeTab(index),
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home_max_outlined),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.search_off_outlined),label: "Search"),
      BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: "Profile"),
    ],
    ),
    );
  }
}