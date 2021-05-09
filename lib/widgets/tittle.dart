import 'package:flutter/material.dart';

class Tittle extends StatelessWidget {
  final String tittle;

  const Tittle({
    Key key, 
    this.tittle
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 35),
      width: 200,
      height: 70,      
      child: Column(
        children: [
          Center(
            child: Text(
              tittle,
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.w700
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            width: 60,
            height: 3,
            decoration: BoxDecoration(
              color: Colors.black
            )
          )
        ],
      ),
    );
  }
}
