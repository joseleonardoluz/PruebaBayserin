import 'package:flutter/material.dart';
import 'package:pruebabeyserin/widgets/bar_grey_home.dart';

class BarBrandsHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    List<String> listBrands = [
      'https://cdn.shopify.com/s/files/1/0278/1901/6264/files/Untitled-1-01_400x.png?v=1587423031',
      'https://cdn.shopify.com/s/files/1/0278/1901/6264/files/Suitsupply_Logo_bc9256e0-b804-486e-a8f2-ec554ace7074_400x.png?v=1605720514',
      'https://cdn.shopify.com/s/files/1/0278/1901/6264/files/Untitled-1-03_400x.png?v=1587423031',
      'https://cdn.shopify.com/s/files/1/0278/1901/6264/files/kisspng-hugo-boss-perfume-logo-sign-fashion-hugo-5b391f08d61939.350947611530470152877_400x.png?v=1591399008'
    ];
    return Stack(
      children: [
        BarGreyHome(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            4, (index) => _ItemBrandBar(urlSlogan: listBrands[index]))
            
          
        )
      ]
    );
  }
}

class _ItemBrandBar extends StatelessWidget {

  final String urlSlogan;

  const _ItemBrandBar({
    Key key, 
    this.urlSlogan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      child: ClipRRect(
        child: Image(
          image: NetworkImage(urlSlogan)
        ),
      ),
    );
  }
}