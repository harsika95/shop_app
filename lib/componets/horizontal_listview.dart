import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/tshirt.jpg',
            image_caption: 'T-shirt',
          ),
          Category(
            image_location: 'images/cats/jeans.jpg',
            image_caption: 'Jeans',
          )  ,
          Category(
            image_location: 'images/cats/formalshirt3.jpg',
            image_caption: 'Formalshirt',
          ),
          Category(
            image_location: 'images/cats/informalshirt.jpg',
            image_caption: 'Informalshirt',
          ),
          Category(
            image_location: 'images/cats/frock.jpg',
            image_caption: 'Frock',
          ),
          Category(
            image_location: 'images/cats/accessories3.jpg',
            image_caption: 'Accessories',
          ),
          Category(
            image_location: 'images/cats/shoe.jpg',
            image_caption: 'Shoes',
          ),
        ],
      ),
    );
  }
}
class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({
    this.image_location,
    this.image_caption
});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: (){},
    child:Container(
      width: 100.0,
        child: ListTile(
          title: Image.asset(image_location,
          width: 40.0,
          height: 40.0,),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(image_caption, style: new TextStyle(fontSize: 12.0,color: Colors.black54),),
          )
    ),
    ),
    ),
    );
  }
}

