import 'package:flutter/material.dart';
import 'package:pruebabeyserin/widgets/app_bar_custom.dart';
import 'package:pruebabeyserin/widgets/bar_brands_home.dart';
import 'package:pruebabeyserin/widgets/card_main_header.dart';
import 'package:pruebabeyserin/widgets/elementsProductFeatured.dart';
import 'package:pruebabeyserin/widgets/experience_klasiko.dart';
import 'package:pruebabeyserin/widgets/footer.dart';
import 'package:pruebabeyserin/widgets/header_main.dart';
import 'package:pruebabeyserin/widgets/our_brands.dart';
import 'package:pruebabeyserin/widgets/tittle.dart';
import 'package:pruebabeyserin/widgets/video_player.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _sizeDivice = MediaQuery.of(context).size;
    bool screenIsBig;

    if (_sizeDivice.width > 420) {
      screenIsBig = true;
    } else {
      screenIsBig = false;
    }

    return SafeArea(
      child: Scaffold(
          body: (screenIsBig)
              ? Stack(children: [            
                  Center(
                    child: Container(
                      color: Colors.white,
                      width: _sizeDivice.width,
                      height: _sizeDivice.height,
                      child: Stack(children: [
                        ListView(children: [
                          AppBarCustom(),
                          HeaderMain(),
                          CardMainHeader(),
                          Tittle(tittle: 'PRODUCTOS DESTACADOS'),
                          ElementsProductFeatured(),
                          Tittle(tittle: 'NUESTRAS MARCAS'),
                          OurBrands(),
                          Tittle(tittle: 'VIVE LA EXPRIENCIA KLASIKO'),
                          VideoPLayer(),
                          BarBrandsHome(),                       
                          //ExperienceKlasiko(),
                          Footer()
                          
                        ]),
                      ]),
                    ),
                  ),
                ])
              : Container()),
    );
  }
}


