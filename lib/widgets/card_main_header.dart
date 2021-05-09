import 'package:flutter/material.dart';

class CardMainHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _sizeDivice = MediaQuery.of(context).size;
    return Container(
      width: _sizeDivice.width,
      height: _sizeDivice.height * 0.55,
      child: ClipRRect(
        child: Image.network( 
          'https://cdn.shopify.com/s/files/1/0278/1901/6264/files/GK-Web-Panama-Banner-V03Desktop.png?v=1605798843',
          fit: BoxFit.cover,
          ),

      ),
    );
  }
}
