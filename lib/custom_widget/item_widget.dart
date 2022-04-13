import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  late final String itemImage;
  late final String itemName;
  late final String itemQuantity;
  late final double itemRate;
  Function getDescription;

  ItemWidget(
      {required this.itemImage,
      required this.itemName,
      required this.itemQuantity,
      required this.itemRate,
      required this.getDescription});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 175,
        height: 190,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300, width: 1),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,bottom: 10),
                  child: Row(
                    children: [Spacer(),
                      Image(width: 100, height: 100, image: NetworkImage(itemImage)),
                      Spacer()
                    ],
                  ),
                ),
                Text(itemName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0,bottom: 20),
                  child: Text(itemQuantity,style: TextStyle(color: Colors.grey),),
                ),
                Row(
                  children: [
                    Text(
                      new String.fromCharCodes(new Runes('\u0024')),
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text("$itemRate",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Spacer(),
                    GestureDetector(onTap: (){
                      getDescription();
                    },
                      child: Container(width: 50,height: 50,decoration: BoxDecoration(color: Colors.green,
                      borderRadius: BorderRadius.circular(20),),
                      child: Icon(Icons.add,color: Colors.white,size: 35,),),
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
