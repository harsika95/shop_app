import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var products_on_the_cart=[
    {
      "name":"Blazer",
      "picture":"images/products/blazer.jpg",
      "price":2500,
      "size":"M",
      "color":"black",
      "quantity": 1,
    },
    {
      "name":"Heals",
      "picture":"images/products/heals.jpg",
      "price":1500,
      "size":"M",
      "color":"green",
      "quantity": 1,
    },
    {
      "name":"Red Frock",
      "picture":"images/products/frock2.jpg",
      "price":1500,
      "size":"M",
      "color":"green",
      "quantity": 1,
    },
    {
      "name":"Skirt",
      "picture":"images/products/skirt.jpg",
      "price":1500,
      "size":"M",
      "color":"green",
      "quantity": 1,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: products_on_the_cart.length,
        itemBuilder: (context,index){
          return Single_cart_product(
            cart_product_name: products_on_the_cart[index]["name"],
            cart_prod_color: products_on_the_cart[index]["color"],
            cart_prod_quantity: products_on_the_cart[index]["quantity"],
            cart_product_size: products_on_the_cart[index]["size"],
            cart_prod_price: products_on_the_cart[index]["price"],
            cart_prod_picture: products_on_the_cart[index]["picture"],
          );
        });
  }
}
class Single_cart_product extends StatelessWidget {
  final cart_product_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_product_size;
  final cart_prod_color;
  final cart_prod_quantity;

  Single_cart_product({
    this.cart_product_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_product_size,
    this.cart_prod_quantity,
    this.cart_prod_color
});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //Leading section
        leading: new Image.asset(cart_prod_picture,width: 40.0,height:40.0,),
        //title section
        title:new Text(cart_product_name),
        //subtitle
        subtitle: new Column(
          children: <Widget>[
            //Row inside the column
            new Row(
              children: <Widget>[
                //this is for the size of the product
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size"),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(cart_product_size,style: TextStyle(color: Colors.red),),
                ),
                //this is for the productcolor
                new Padding(padding: const EdgeInsets.fromLTRB(20.0,8.0,8.0,8.0),
                child: new Text("Color"),),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(cart_prod_color ,style: TextStyle(color: Colors.red),),
                ),

      ],
        ),
            //this is for product price
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$${cart_prod_price}",
                style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red
                ),
              ),
            )
        ],
      ),
    trailing: new Column(
      children: <Widget>[
        new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
        //new Text("$cart_prod_quantity"),
        //new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
      ],
    ),
        ),

    );
  }

}

