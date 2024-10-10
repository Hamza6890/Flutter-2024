import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Card(
        elevation: 8.0,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width * .7,
                      child: Image.asset("assets/img1.jpeg",fit: BoxFit.fill,)),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "E  T  Q  .",style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        SizedBox(width: 20,),
                        TextButton(onPressed: (){}, child:
                        Text("Shop All",style: TextStyle(
                          color: Colors.white70,
                        ),)),
                        SizedBox(width: 20,),
                        TextButton(onPressed: (){}, child:
                        Text("Shoe Care",style: TextStyle(
                          color: Colors.white70,
                        ),)),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Search",style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Help",style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),),
                        SizedBox(
                          width: 20,
                        ),
                        Text("My acccount",style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black
                          ),
                          child: Center(
                            child: Text("0",style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                            ),),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 150,),
                  Text("New Styles added",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),),
                  Text("Holiday Sale.",style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.normal,
                    fontSize: 23,
                  ),),Text("UP to 50% Off ",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                  ),),
                  TextButton(onPressed: (){}, child: Text("Shop here.",style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                    decoration: TextDecoration.underline
                  ),),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
