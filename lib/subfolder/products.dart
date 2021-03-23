import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    // List of Products
    {
      "name": "Wedding Cake",
      "picture": "pics/images/cake2.png",
      "price": 20,
    },
    {
      "name": "Dress",
      "picture": "pics/images/dress4.jpg",
      "price": 20,
    },
    {
      "name": "Rings",
      "picture": "pics/images/rings1.jpg",
      "price": 20,
    },
    {
      "name": "Makeup",
      "picture": "pics/images/hairnmakeup.png",
      "price": 20,
    },
    {
      "name": "Car",
      "picture": "pics/images/car1.jpg",
      "price": 20,
    },
    {
      "name": "Catering",
      "picture": "pics/images/food1.jpg",
      "price": 20,
    },
    {
      "name": "Decoration",
      "picture": "pics/images/deco1.jpg",
      "price": 20,
    },
    {
      "name": "Heels",
      "picture": "pics/images/femaleshoes.jpg",
      "price": 20,
    },
    {
      "name": "Boots",
      "picture": "pics/images/menshoes.jpg",
      "price": 20,
    },
    {
      "name": "Photography",
      "picture": "pics/images/photography.jpg",
      "price": 20,
    },
    {
      "name": "Suits",
      "picture": "pics/images/suit.jpg",
      "price": 20,
    },
    {
      "name": "Venue",
      "picture": "pics/images/venue.jpg",
      "price": 20,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

// new stateless class
class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_price;

  // constructor
  Single_prod({this.prod_name, this.prod_picture, this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () {},
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 15),
                      ),
                      title: Text(
                        "\$$prod_price",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
