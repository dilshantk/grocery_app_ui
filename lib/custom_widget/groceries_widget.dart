import 'package:flutter/material.dart';



class Groceries extends StatelessWidget {
  String img;
   String txt;

  Groceries({
    required this.img,
    required this.txt
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 250,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.blue.shade100, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Image(
                  width: 80,
                  height: 80,
                  image: NetworkImage(
                      img)),
              SizedBox(
                width: 30,
              ),
              Text(txt,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
