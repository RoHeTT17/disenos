import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      selectedItemColor: Colors.pink,
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      //currentIndex: 2,
      items: [
         BottomNavigationBarItem(
           icon: Icon(Icons.calendar_today_outlined),
           label: 'Calendario'
           ), 

         BottomNavigationBarItem(
           icon: Icon(Icons.pie_chart_outline_outlined),
           label: 'Gráfica'
           ),

         BottomNavigationBarItem(
           icon: Icon(Icons.supervised_user_circle_outlined),
           label: 'Usuarios'
           ),                        
      ]);
  }
}