
import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Table(
       children: const [
         TableRow(
            children: [
              _SingleCard(color: Colors.blue,icon: Icons.border_all,text: 'General',),
              _SingleCard(color: Colors.pinkAccent,icon: Icons.car_rental,text: 'Transport',),
            ]
         ),
         TableRow(
             children: [
               _SingleCard(color: Colors.tealAccent,icon: Icons.add_business,text: 'Shopping',),
               _SingleCard(color: Colors.green,icon: Icons.all_inbox_rounded,text: 'Grocery',),
             ]
         ),
         TableRow(
             children: [
               _SingleCard(color: Colors.blue,icon: Icons.border_all,text: 'General',),
               _SingleCard(color: Colors.pinkAccent,icon: Icons.car_rental,text: 'Transport',),
             ]
         ),
         TableRow(
             children: [
               _SingleCard(color: Colors.blue,icon: Icons.border_all,text: 'General',),
               _SingleCard(color: Colors.pinkAccent,icon: Icons.car_rental,text: 'Transport',),
             ]
         ),

       ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: this.color,
          child: Icon(this.icon,size: 35,color: Colors.white,),
          radius: 30,
        ),
        SizedBox(height: 10,),
        Text(this.text,style: TextStyle(color: this.color,fontSize: 18),)
      ],
    );

    return _CardBackground(child: column);
  }
}
class _CardBackground extends StatelessWidget {

  final Widget child;

  const _CardBackground({
    Key? key,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
              sigmaX: 5,sigmaY: 5
          ),
          child: Container(
              height: 180,
              decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20),
              ),
              child: this.child,
          ),
        ),
      ),
    );
  }
}

