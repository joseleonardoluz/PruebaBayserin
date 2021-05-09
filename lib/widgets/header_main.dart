import 'package:flutter/material.dart';
import 'package:pruebabeyserin/widgets/items_menu_header.dart';
import 'package:pruebabeyserin/widgets/second_menu_header.dart';

class HeaderMain extends StatelessWidget {
  const HeaderMain({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _sizeDivice = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top:20),
      width: _sizeDivice.width * 0.7,
      height: 180,
      child: Row(  
        
        children: [
        SizedBox(width: 550),
        Column(children: [
          Container(
            width: _sizeDivice.width * 0.4,
            height: 70,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.shopify.com/s/files/1/0278/1901/6264/files/Logo_GK_cortado_1000x.png?v=1587243353'))),
          ),
          ItemsMenuHeader()
        ]),
        SizedBox(width: 250),
        SecondMenuHeader()
      ]),
    );
  }
}
