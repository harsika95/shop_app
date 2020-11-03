import 'package:flutter/material.dart';
import 'package:shop_app/main.dart';
import 'package:shop_app/pages/home.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>new HomePage()),);},
          child: Text('Sann Excellence')),

        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: (){}),

        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
          footer: new Container(
            color: Colors.white70,
            child: ListTile(
              leading: new Text(widget.product_detail_name,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
              title: new Row(
                children: <Widget>[
                  Expanded(
                    child: new Text("\$${widget.product_detail_old_price}",
                    style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),)
                  ),

                  Expanded(
                      child: new Text("\$${widget.product_detail_new_price}",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.red),)
                  ),

                ],
              ),
            ),
          ),
            ),
          ),

          //the first button
          Row(
            children: <Widget>[

              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: new Text("Size"),
                        content: new Text("Choose the size"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: new Text("close"),)
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Size")),
                    Expanded(child: new Icon(Icons.arrow_drop_down)),
                  ],
                ),
                ),
              ),

              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Color"),
                            content: new Text("Choose a color"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text("close"),)
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Color")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Quantity"),
                            content: new Text("Choose the quantity"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text("close"),)
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Qty")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //The second button
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy now")
                ),
              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart),color: Colors.red, onPressed: (){}),

              new IconButton(icon: Icon(Icons.favorite_border), color: Colors.red, onPressed: (){}),
            ],
      ),
      Divider(),
      new ListTile(
        title: new Text("product details"),
        subtitle: new Text("It is cotton meterial.You can't wash with detergents,only use shampoo."),
      ),

          Divider(),
      new Row(
        children: <Widget>[
          Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0, 5.0, 5.0),
          child: new Text("Product name",style: TextStyle(color: Colors.grey),),),
          Padding(padding: EdgeInsets.all(5.0),
            child: new Text(widget.product_detail_name),)
        ],
      ),
        new Row(
          children: <Widget>[
             Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0, 5.0, 5.0),
               child: new Text("Product brand",style: TextStyle(color: Colors.grey),),),
            Padding(padding: EdgeInsets.all(5.0),
            child: new Text("Brand X"),)
        ],
      ),
      //Add the product condition
      new Row(
          children: <Widget>[
      Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0, 5.0, 5.0),
      child: new Text("Product condition",style: TextStyle(color: Colors.grey),),),
            Padding(padding: EdgeInsets.all(5.0),
              child: new Text("New"),)
    ],
      ),
     Divider(),
     Padding(
       padding: const EdgeInsets.all(8.0),
       child:new Text("Similar products"),
     ),

//   similar product Section
     Container(
       height: 340.0,
       child: Similar_products(),
     )
    ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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
          return Similar_Single_prod(
            product_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_Single_prod extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_Single_prod({
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


