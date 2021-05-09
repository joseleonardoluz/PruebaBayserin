import 'package:flutter/material.dart';

class BarGreyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _sizeDivice = MediaQuery.of(context).size;
    return Container(
    width: _sizeDivice.width, 
    height: 300, 
    color: Colors.grey[300]);
  }
}
