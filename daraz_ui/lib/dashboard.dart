import 'package:daraz_ui/slider.dart';
import 'package:flutter/material.dart';

class Dashboard_ui extends StatelessWidget {
  const Dashboard_ui({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Column(
                children: [
                  Icon(Icons.qr_code_scanner,color: Colors.black,),
                  Text("Scan",style: TextStyle(
                    fontSize: 10
                  ),)
                ],
              ),
              SizedBox(width: 20,),
              Container(
                width: MediaQuery.of(context).size.width / 1.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black,),
                    hintText: "search....",
                    suffixIcon: Icon(Icons.search,color: Colors.black,),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Icon(Icons.currency_bitcoin,color: Colors.black,),
                  Text("Coin",style: TextStyle(
                      fontSize: 10
                  ),)
                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Icon(Icons.account_balance_wallet_outlined,color: Colors.black,),
                  Text("Wallet",style: TextStyle(
                      fontSize: 10
                  ),)
                ],
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.amberAccent
                      ),
                      child: ImageSlider()
                  ), //Slider Container
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 20,right: 20,top: 190),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: ,
                        borderRadius: BorderRadius.circular(20)
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
