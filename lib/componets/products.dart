import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list=[
    {
      "name":"Blazer",
      "picture":"images/products/blazer.jpg",
      "old_price":3000,
      "price":2500,
    },
    {
      "name":"Shoes",
      "picture":"images/products/shoes.jpg",
      "old_price":5000,
      "price":2500,
    },
    {
      "name":"Red Frock",
      "picture":"images/products/frock2.jpg",
      "old_price":2000,
      "price":1500,
    },

    {
      "name":"Skirt",
      "picture":"images/products/skirt.jpg",
      "old_price":2000,
      "price":1500,
    },

    {
      "name":"Jeans",
      "picture":"images/products/jeans3.jpg",
      "old_price":2000,
      "price":1500,
    },

    {
      "name":"Heals",
      "picture":"images/products/heals.jpg",
      "old_price":2000,
      "price":1500,
    },

    {
      "name":"shirt",
      "picture":"images/products/formalshirt1.jpg",
      "old_price":2000,
      "price":1500,
    },
    {
      "name":"Black Frock",
      "picture":"images/products/frock3.jpg",
      "old_price":3000,
      "price":2000,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index){
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              product_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}
class Single_prod extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.product_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price
});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: ()=>Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new ProductDetails(
                      product_detail_name: product_name,
                      product_detail_new_price: prod_price,
                      product_detail_old_price: prod_old_price,
                      product_detail_picture: prod_picture,
                    ))),
            child: GridTile(
              footer: Container(
                color:Colors.white,
                child: new Row(children: <Widget>[
                  Expanded(
                    child: Text(product_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                  ),
                  new Text("\$${prod_price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                ],)

              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              )),
          ),
          ))
        );
  }
}


