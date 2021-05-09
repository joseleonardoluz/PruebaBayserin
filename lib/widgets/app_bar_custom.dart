import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(color: Color.fromRGBO(53, 53, 53, 1)),
      child: Center(
        child: Text(
          'ENTREGAS EN DOS DIAS HÁBILES EN CIUDAD DE PANAMÁ',
          style: TextStyle(
              fontSize: 14, 
              fontWeight: FontWeight.w300, 
              letterSpacing: 0.07,
              color: Colors.white
            ),
        ),
      ),
    );
  }
}
