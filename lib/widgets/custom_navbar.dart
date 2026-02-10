import 'package:flutter/material.dart';
import 'package:lotto_app/screens/games.dart';
import 'package:lotto_app/screens/home_page.dart';
import 'package:lotto_app/screens/profile.dart';
import 'package:lotto_app/screens/results.dart';
import 'package:lotto_app/screens/tickets.dart';

class CustomNavbar extends StatefulWidget {
  const CustomNavbar({super.key});

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  int  _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
       _selectedIndex = index;
    });
  }
  final List<Widget>_screens =[
    HomePage(),
    Results(),
    Games(),
    Tickets(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_screens[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon:Image.asset("assets/home.png",width: 27,height: 27,),
            label: "Home"
            ),
             BottomNavigationBarItem(icon:Image.asset("assets/draw.png",width: 27,height: 27,),
            label: "Results"
            ),
             BottomNavigationBarItem(icon:Image.asset("assets/joystick.png",width: 27,height: 27,),
            label: "Games"
            ),
             BottomNavigationBarItem(icon:Image.asset("assets/ticket.png",width: 27,height: 27,),
            label: "Tickets"
            ),
             BottomNavigationBarItem(icon:Image.asset("assets/user.png",width: 27,height: 27,),
            label: "Profile"
            ), 
          ],),
      ),
    );
  }
}