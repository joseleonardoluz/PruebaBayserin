import 'package:flutter/material.dart';

class OurBrands extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _sizeDivice = MediaQuery.of(context).size;
    return Container(
      width: _sizeDivice.width,
      height: 860,     
      child: Container(
        child: Row(children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              children: [
               _CardOurBrands(
                textBrand: 'BOSS',
                 urlImage: 'https://cdn.shopify.com/s/files/1/0278/1901/6264/files/WhatsApp_Image_2020-04-19_at_7.11.47_PM.jpeg?v=1587342156'
                ),
               _CardOurBrands(
                 textBrand: 'MONCLER',
                 urlImage: 'https://cdn.shopify.com/s/files/1/0278/1901/6264/files/zacinterview-5.jpg?v=1591402701'),
              ],
            ),
          ),
          Column(
            children: [           
              _CardOurBrands(
                textBrand: 'SUITSUPPLY',
                urlImage: 'https://cdn.shopify.com/s/files/1/0278/1901/6264/files/HBME_110_S20SR_BMB_001_sRGB_1080x.jpg?v=1587411606'),
              _CardOurBrands(
                textBrand: 'HUGO',
                urlImage: 'https://cdn.shopify.com/s/files/1/0278/1901/6264/files/5275E822-AFA4-444C-BDAE-F88E00D8C8D7_1080x.jpeg?v=1605910589'),
            ],
          )
        ]),
      ),
    );
  }
}

class _CardOurBrands extends StatelessWidget {

  final String urlImage;
  final String textBrand;
  
  const _CardOurBrands({
    Key key, 
    @required this.urlImage, 
    @required this.textBrand,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.symmetric(vertical: 35),
        width: 900,
        height: 350,
        child: ClipRRect(
          child: Image(
            image: NetworkImage(
              urlImage
             ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        top: 160,
        left: 50,
          child: Column(
          children: [
            Center(
              child: Text(
                textBrand,
                style: TextStyle(
                  color: Colors.white,
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
      ),
    ]);
  }
}
