import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _sizeDivice = MediaQuery.of(context).size;

    return Container(
       
        width: _sizeDivice.width,
        height: _sizeDivice.width * 0.2,
        color: Colors.black87);
  }
}
