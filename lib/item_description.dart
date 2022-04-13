import 'dart:ui';
import 'package:flutter/material.dart';

class ItemDetail extends StatefulWidget {
   late final String itemDescriptionImage;
   late final String itemDescriptionName;
   late final String itemDescriptionQuantity;
   late final double itemDescriptionRate;
   ItemDetail({required this.itemDescriptionImage,required this.itemDescriptionName,required this.itemDescriptionQuantity,
   required this.itemDescriptionRate});

  @override
  State<ItemDetail> createState() => _ItemDetailState(itemDescriptionImage,itemDescriptionName,
  itemDescriptionQuantity,itemDescriptionRate);
}

class _ItemDetailState extends State<ItemDetail> {
  late final String itemDescriptionImage;
  late final String itemDescriptionName;
  late final String itemDescriptionQuantity;
  late final double itemDescriptionRate;
  _ItemDetailState(this.itemDescriptionImage,this.itemDescriptionName,this.itemDescriptionQuantity,this.itemDescriptionRate);

  int _counter=1;
  void increment(){
    setState(() {
      _counter++;
    });
  }

  void decrement(){
    setState(() {
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Container(
              child: Center(
                widthFactor: 300,
                heightFactor: 300,
                child: Image(
                  image: NetworkImage(
                      itemDescriptionImage),
                  width: 300,
                  height: 300,
                ),
              ),
              width: double.infinity,
              height: 310,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20, top: 20, bottom: 3),
              child: Row(
                children: [
                  Text(
                    itemDescriptionName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Spacer(),
                  Icon(
                    Icons.favorite_outline_sharp,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 10),
              child: Text(
                itemDescriptionQuantity,
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 10, bottom: 10),
              child: Row(
                children: [
                  TextButton(
                      onPressed:()
                {decrement();
                getItemRate();} ,
                      child: Text(
                        "-",
                        style: TextStyle(fontSize: 50, color: Colors.grey),
                      )),
                  Container(
                    width: 35,
                    height: 35,
                    child: Center(
                      child: Text(
                        "$_counter",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  TextButton(
                      onPressed: ()
                      {increment();
                        getItemRate();},
                      child: Text(
                        "+",
                        style: TextStyle(color: Colors.green, fontSize: 25),
                      )),
                  Spacer(),
                  Text(
                    new String.fromCharCodes(new Runes('\u0024')),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "$itemRate",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Divider(
                thickness: 1,
                color: Colors.grey[200],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20, top: 5, bottom: 5),
              child: Text(
                "Product Detail",
                style: TextStyle(fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 5),
              child: Text(
                "Apples Are Nutritious, Apples May Be Good For Weight Loss. Apples May Be Good For Your Heart. As Part Of A Healtful And Varied Diet",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Divider(
                thickness: 1,
                color: Colors.grey[200],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20, top: 5, bottom: 5),
              child: Row(
                children: [
                  Text(
                    "Nutritions",
                    style: TextStyle(fontSize: 15),
                  ),
                  Spacer(),
                  Container(
                    width: 35,
                    height: 15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[300]),
                    child: Center(
                        child: Text(
                      "100gr",
                      style: TextStyle(fontSize: 10),
                    )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Divider(
                thickness: 1,
                color: Colors.grey[200],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20, top: 5, bottom: 5),
              child: Row(
                children: [
                  Text(
                    "Review",
                    style: TextStyle(fontSize: 15),
                  ),
                  Spacer(),
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.orange),
                  Icon(Icons.star, color: Colors.orange),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text("Add To Basket",
                          style: TextStyle(color: Colors.white)))),
            )
          ],
        ),
      ),
    );
  }
  double itemRate=4.99;
  void getItemRate(){
    itemRate =itemDescriptionRate*_counter.round();
  }
}
