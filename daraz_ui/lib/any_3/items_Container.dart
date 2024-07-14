import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class items3_container extends StatelessWidget {
  final String text;
  final String first_price;

  const items3_container({super.key,
    required this.text,
    required this.first_price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 120,
      decoration: BoxDecoration(
          color: Colors.grey[300]
      ),
      child: Column(
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Image.asset("assets/s1.jfif"),
          ),
          Row(
            children: [
              Text("Rs",style: TextStyle(
                  fontSize: 10
              ),),
              SizedBox(width: 3,),
              Text(text,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
              ),),
              SizedBox(width: 5,),
              Text(first_price,style: TextStyle(
                fontSize: 10,
                decoration: TextDecoration.lineThrough,
              ),),
            ],
          ),

          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.star,size: 12,color: Colors.amber,),
              Text("3.6/5 (21)",style: TextStyle(
                fontSize: 10,
              ),),
              SizedBox(width: 5,),
              Text("253 Sold",style: TextStyle(
                fontSize: 10,
              ),),
            ],
          )
        ],
      ),
    );
  }
}
