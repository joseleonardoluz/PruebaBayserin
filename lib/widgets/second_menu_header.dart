import 'package:flutter/material.dart';

class SecondMenuHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.only(right: 20, bottom: 140, left: 80),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            InkWell(
              onTap: () {},
              child: Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Row(children: [
                    Container(child: Text('Español')),
                    Icon(Icons.arrow_drop_down)
                  ])),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Container(child: Text('Ingresar'))),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Row(children: [
                    Container(child: Text('Carrito')),
                    Text('(0)')
                  ])),
            ),
            Container(child: Icon(Icons.search))
          ]));
  }
}