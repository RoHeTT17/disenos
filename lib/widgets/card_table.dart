import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(color: Colors.blue, icon: Icons.border_all, label: 'General',),
            _SingleCard(color: Colors.pinkAccent, icon: Icons.car_rental, label: 'Transport',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.purple, icon: Icons.shop, label: 'Shopping',),
            _SingleCard(color: Colors.pinkAccent, icon: Icons.car_rental, label: 'Transport',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.purple, icon: Icons.shop, label: 'Shopping',),
            _SingleCard(color: Colors.pinkAccent, icon: Icons.cloud, label: 'Bill',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.deepPurple, icon: Icons.movie, label: 'Entreteiment',),
            _SingleCard(color: Colors.pinkAccent, icon: Icons.food_bank_outlined, label: 'Grocery',),
          ]
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String label;

  const _SingleCard({Key? key,required this.icon, required this.color,required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var column = Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: this.color,
                  child: Icon(icon, size: 35, color: Colors.white),
                  radius: 30,
                ),
                SizedBox(height: 30,),
                Text(this.label, style: TextStyle (color: this.color, fontSize: 18),)
              ],
        
            );


    return _CardBrackGround(child: column);
  }
}

class _CardBrackGround extends StatelessWidget {

  final Widget child;

  const _CardBrackGround({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),  
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: this.child,
        
          ),
        ),
      ),
    );
  }
}