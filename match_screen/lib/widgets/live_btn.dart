import 'package:flutter/material.dart';

class live_btn extends StatelessWidget {
  const live_btn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[350],
      ),
      child: Column(
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "West Series 2022",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black),
                  ),
                  Container(
                    height: 30,
                    width: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.red,
                    ),
                    child: Padding(
                      padding:
                      const EdgeInsets.only(left: 7, right: 5),
                      child: Row(
                        children: [
                          Icon(
                            Icons.do_not_disturb_on_total_silence,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Live",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),  //1st Container
          Container(
            height: 62,
            width: MediaQuery.of(context).size.width ,
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(radius: 20,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/s1.jfif"),
                      ),
                      SizedBox(width: 5,),
                      Text("England",style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(width: 5,),
                      Icon(Icons.sports_volleyball_sharp,color: Colors.green,size: 13,)
                    ],
                  ),
                  Row(children: [
                    Text("(50 OV)",style: TextStyle(
                      color: Colors.grey
                    ),),
                    Text("348/7",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,fontSize: 18
                    ),)
                  ],)
                ],
              ),
            ),
          ), //2nd Container
          Container(
            
            width: MediaQuery.of(context).size.width ,
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(radius: 20,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/s1.jfif"),
                      ),
                      SizedBox(width: 5,),
                      Text("England",style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(width: 5,),
                      Icon(Icons.sports_volleyball_sharp,color: Colors.green,size: 13,)
                    ],
                  ),
                  Row(children: [
                    Text("(50 OV)",style: TextStyle(
                        color: Colors.grey
                    ),),
                    Text("348/7",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,fontSize: 18
                    ),)
                  ],)
                ],
              ),
            ),
          ), //3rd Container
        ],
      ),
    );
  }
}
