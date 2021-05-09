import 'package:flutter/material.dart';

class ElementsProductFeatured extends StatelessWidget {
  const ElementsProductFeatured({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: Colors.white),
          Container(
              width: MediaQuery.of(context).size.width,
              height: 650,
              color: Colors.grey[200]),
        ],
      ),
      Container(        
        height: 680,
        child: ListView(scrollDirection: Axis.horizontal, children: [
          _ItemProductFeatured(
              nameProduct: 'T-SHIRT',
              descripction: 'Moncler',
              price: '225.00',
              urlImage:
                  'https://cdn.shopify.com/s/files/1/0278/1901/6264/products/ujyrobjgn6zqc4u04uhz_540x.jpg?v=1608240087',
              urlImageHover:
                  'https://cdn.shopify.com/s/files/1/0278/1901/6264/products/kelwatoz67cr0fshwdsv_540x.jpg?v=1608241019'),
          _ItemProductFeatured(
              nameProduct: 'Polo',
              descripction: 'Moncler',
              price: '375.00',
              urlImage:
                  'https://cdn.shopify.com/s/files/1/0278/1901/6264/products/kelwatoz67cr0fshwdsv_540x.jpg?v=1608241019',
              urlImageHover:
                  'https://cdn.shopify.com/s/files/1/0278/1901/6264/products/ujyrobjgn6zqc4u04uhz_540x.jpg?v=1608240087'),
          _ItemProductFeatured(
              nameProduct: 'Polo',
              descripction: 'Moncler',
              price: '215.00',
              urlImage:
                  'https://cdn.shopify.com/s/files/1/0278/1901/6264/products/moncler-mens-embroidered-logo-baseball-hat-f10913b70000v0088742_540x.jpg?v=1608240778',
              urlImageHover:
                  'https://cdn.shopify.com/s/files/1/0278/1901/6264/products/F10918A70160_S20-788_05_540x.png?v=1608240676'),
          _ItemProductFeatured(
            nameProduct: 'Polo',
            descripction: 'Moncler',
            price: '285.00',
            urlImage:
                'https://cdn.shopify.com/s/files/1/0278/1901/6264/products/F10918A70160_S20-788_05_540x.png?v=1608240676',
            urlImageHover:
                'https://cdn.shopify.com/s/files/1/0278/1901/6264/products/moncler-mens-embroidered-logo-baseball-hat-f10913b70000v0088742_540x.jpg?v=1608240778',
          )
        ]),
      ),
    ]);
  }
}

class _ItemProductFeatured extends StatefulWidget {
  final String urlImage;
  final String urlImageHover;
  final String nameProduct;
  final String descripction;
  final String price;

  const _ItemProductFeatured({
    Key key,
    @required this.urlImage,
    @required this.urlImageHover,
    @required this.nameProduct,
    @required this.descripction,
    @required this.price,
  }) : super(key: key);

  @override
  __ItemProductFeaturedState createState() => __ItemProductFeaturedState();
}

class __ItemProductFeaturedState extends State<_ItemProductFeatured> {
  @override
  Widget build(BuildContext context) {
    String inDinamyc = widget.urlImage;

    return InkWell(
      onHover: (bool) {
        setState(() {
          inDinamyc = widget.urlImageHover;
        });
      },
      child: Column(
        children: [
          _CardProductFeatured(inDinamyc: inDinamyc),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Text(
              widget.nameProduct,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Text(
              widget.descripction,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Text(
              '&' + widget.price,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(right: 10),
                  child:
                      CircleAvatar(radius: 10, backgroundColor: Colors.black)),
              Container(

                  child:
                      CircleAvatar(radius: 10, backgroundColor: Colors.blue)),
            ],
          ),
        ],
      ),
    );
  }
}

class _CardProductFeatured extends StatelessWidget {
  const _CardProductFeatured({
    Key key,
    @required this.inDinamyc,
  }) : super(key: key);

  final String inDinamyc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, left: 10),
      width: 490,
      height: 553,
      child: ClipRRect(
        child: Image(
          image: NetworkImage(inDinamyc),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
