import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: 'pics/categories/cake5.png',
            image_caption: 'Cake',
          ),
          Category(
            image_location: 'pics/categories/wedding-dress.png',
            image_caption: 'Dress',
          ),
          Category(
            image_location: 'pics/categories/ring.png',
            image_caption: 'Rings',
          ),
          Category(
            image_location: 'pics/categories/cosmetics.png',
            image_caption: 'Makeup',
          ),
          Category(
            image_location: 'pics/categories/car.png',
            image_caption: 'Cars',
          ),
          Category(
            image_location: 'pics/categories/catering.png',
            image_caption: 'Catering',
          ),
          Category(
            image_location: 'pics/categories/deco.png',
            image_caption: 'Deco',
          ),
          Category(
            image_location: 'pics/categories/heels.png',
            image_caption: 'Heels',
          ),
          Category(
            image_location: 'pics/categories/menshoes.png',
            image_caption: 'Boots',
          ),
          Category(
            image_location: 'pics/categories/photography.png',
            image_caption: 'Photography',
          ),
          Category(
            image_location: 'pics/categories/suit.png',
            image_caption: 'Suits',
          ),
          Category(
            image_location: 'pics/categories/venue.png',
            image_caption: 'Venue',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
                style: new TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
