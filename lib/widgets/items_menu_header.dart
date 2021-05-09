import 'package:flutter/material.dart';

class ItemsMenuHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size _sizeDivice = MediaQuery.of(context).size;
    return Container(       
        width: _sizeDivice.width * 0.4,
        height: 70,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          InkWell(
            child: Container(
                margin: EdgeInsets.only(right: 30), child: Text('Inicio')),
          ),
          InkWell(
            onTap: () {},
            child: Container(
                margin: EdgeInsets.only(right: 25),
                child: Row(children: [
                  Container(child: Text('Marcas')),
                  Icon(Icons.arrow_drop_down)
                ])),
          ),
          InkWell(
            onTap: () {},
            child: Container(
                margin: EdgeInsets.only(right: 25),
                child: Row(children: [
                  Container(child: Text('Departamentos')),
                  Icon(Icons.arrow_drop_down)
                ])),
          ),
          InkWell(
            child: Container(
                margin: EdgeInsets.only(right: 30), child: Text('Nosotros')),
          ),
        ]),
      );
  }
}