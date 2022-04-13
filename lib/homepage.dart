import 'package:e8assignment/custom_widget/groceries_widget.dart';
import 'package:e8assignment/custom_widget/item_widget.dart';
import 'package:e8assignment/item_description.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

final exclusiveImage = [
  "https://th.bing.com/th/id/OIP.IWUDqJNEkGa_jAbNtzq51wHaHU?pid=ImgDet&rs=1",
  "https://th.bing.com/th/id/R.000702d05f4034be52e4464b517fcc76?rik=EBbyvcsDzG3b3g&riu=http%3a%2f%2fpngimagesfree.com%2fFruit%2fApple%2fapple-png-transparent.png&ehk=a0o8kM6SwLLGX8QGPzgr7q4uKIJ7FFQCPvPjzr%2bu7pQ%3d&risl=&pid=ImgRaw&r=0",
  "https://th.bing.com/th/id/OIP.UHPsi0VdyhZoeGDniSHrywHaFm?pid=ImgDet&rs=1"
];

final exclusiveName = ["Organic Bananas", "Red Apple", "Grapes"];

final exclusiveQuantity = ["7pcs, Price", "1kg, price", "1kg, Price"];

final exclusiveRate = [4.99,4.99,2.99];

final bestSellingImage = [
  "https://th.bing.com/th/id/OIP.CRXi1tvmhIKmbGmjhw0tlQHaF1?pid=ImgDet&rs=1",
  "https://th.bing.com/th/id/OIP.RQH3NucnM8_ow8csMUhRGQHaGq?pid=ImgDet&rs=1",
  "https://th.bing.com/th/id/OIP.TMV0dOjH_yPbzQZzSV7CygHaFb?pid=ImgDet&rs=1"
];

final bestSellingName = ["Red Chilli", "Ginger", "Tomato"];

final bestSellingQuantity = ["1kg, Price", "1kg, Price", "1kg, Price"];

final bestSellingRate = [2.99,4.99,1.99];

final groceriesImage = [
  "https://th.bing.com/th/id/R.9953e11662b70c89be62bc640fbcfd46?rik=pxVxbkuP3jeBuA&riu=http%3a%2f%2ffiles.sitebuilder.name.com%2fenom37479%2fimage%2fpulses_primacy.png&ehk=jGGk77Z2C1sb%2f2f%2fL9XPhgC9xuNRSvFdgoPqSXfcUHw%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1",
  "https://th.bing.com/th/id/OIP.wN5eq-xBPxp9YYtxT7lNuQHaHa?pid=ImgDet&rs=1"
];

final groceriesName = ["Pulses", "Rice"];

final meatImage = [
  "https://th.bing.com/th/id/R.d4ab16e082e3eb9617d05b629a2624e9?rik=CNusRZsYX0MlVA&riu=http%3a%2f%2fwww.pngpix.com%2fwp-content%2fuploads%2f2016%2f02%2fMeat-PNG-image.png&ehk=tGb22trlfNMAdR%2bZGyo9Up7Ij90QvyLqYHCpIbom894%3d&risl=&pid=ImgRaw&r=0",
  "https://th.bing.com/th/id/OIP.fKo3TAfgm1bjP57ugU-ZCgHaEc?pid=ImgDet&rs=1",
  "https://i1.wp.com/searayfoods.com/wp-content/uploads/2019/04/KFSTK-2-1.png?fit=930%2C550&ssl=1"
];

final meatName = ["Beef Bone", "Broiller Chicken", "Fish"];

final meatQuantity = ["1kg, Price", "1kg, Price", "1kg, Price"];

final meatRate = [8.99,6.99,9.99];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_work_outlined), label: "Shop"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_sharp), label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_sharp), label: "Favourite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "Account"),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: ListView(
          children: [
            Image(
              image: AssetImage("images/carrot.png"),
              width: 45,
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on_rounded),
                Text(
                  " Dhaka, Banassre",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[100]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.search_sharp),
                        hintText: "Search Store"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://png.pngtree.com/back_origin_pic/04/57/72/47a32f066d30aa803b98cf1d126194ff.jpg"),
                        fit: BoxFit.cover)),
                width: double.infinity,
                height: 120,
              ),
            ),
            Header(heading: "Exclusive Offer"),
            Container(
                width: double.infinity,
                height: 280,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: exclusiveImage.length,
                    itemBuilder: (context, index) {
                      return ItemWidget(
                          getDescription: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ItemDetail(itemDescriptionImage:exclusiveImage[index] ,itemDescriptionName: exclusiveName[index],
                                  itemDescriptionQuantity:exclusiveQuantity[index] ,itemDescriptionRate: exclusiveRate[index],)),
                            );
                          },
                          itemImage: exclusiveImage[index],
                          itemName: exclusiveName[index],
                          itemQuantity: exclusiveQuantity[index],
                          itemRate: exclusiveRate[index]);
                    })),
            Header(heading: "Best Selling"),
            Container(
                width: double.infinity,
                height: 280,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: bestSellingImage.length,
                    itemBuilder: (context, index) {
                      return ItemWidget(
                          getDescription: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ItemDetail(itemDescriptionImage:bestSellingImage[index] ,
                                  itemDescriptionName:bestSellingName[index] ,itemDescriptionQuantity:bestSellingQuantity[index] ,
                                  itemDescriptionRate: bestSellingRate[index],)),
                            );
                          },
                          itemImage: bestSellingImage[index],
                          itemName: bestSellingName[index],
                          itemQuantity: bestSellingQuantity[index],
                          itemRate: bestSellingRate[index]);
                    })),
            Header(heading: "Groceries"),
            Container(
                width: double.infinity,
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: groceriesImage.length,
                    itemBuilder: (context, index) {
                      return Groceries(
                          img: groceriesImage[index],
                          txt: groceriesName[index]);
                    })),
            Container(
                width: double.infinity,
                height: 280,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: exclusiveImage.length,
                    itemBuilder: (context, index) {
                      return ItemWidget(
                          getDescription: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ItemDetail(itemDescriptionImage: meatImage[index] ,
                                  itemDescriptionName:meatName[index] ,itemDescriptionQuantity:meatQuantity[index] ,
                                  itemDescriptionRate:meatRate[index] ,)),
                            );
                          },
                          itemImage: meatImage[index],
                          itemName: meatName[index],
                          itemQuantity: meatQuantity[index],
                          itemRate: meatRate[index]);
                    })),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  final String heading;

  Header({required this.heading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            heading,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black87),
          ),
          Spacer(),
          Text(
            "See all ",
            style: TextStyle(
                color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
