import 'package:chat/pages/home_page.dart';
import 'package:chat/pages/profile_page.dart';
import 'package:chat/pages/settings_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
   FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  int _selectedIndex=0;

  void _navigateBottomBar(int index)
  {
    setState(() {
      _selectedIndex=index;
    });
  }

   List _pages=[
    Home_Page(),
    Profile(),
    Settings_Page()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Iam in the first page"),),
      body:_pages[_selectedIndex] ,
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.favorite, size: 40,)),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("HOME"),
              onTap: ()
              {
                Navigator.pushNamed(context, "/homepage");
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title:Text("Settings"),
              onTap:()=>Navigator.pushNamed(context, "/settings")

            ),




          ],



        ),




      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap:_navigateBottomBar,
        items: [
        BottomNavigationBarItem(icon:Icon(Icons.home,),
        label:"Home",

        ),

        BottomNavigationBarItem(icon: Icon(Icons.settings),
        label: "Settings"),
        BottomNavigationBarItem(icon: Icon(Icons.person),
        label: "Profile")



      ],



      ),
    );
  }
}
