import 'package:flutter/material.dart';

class appBar_section extends StatelessWidget {
   appBar_section({super.key});
  TextEditingController searchCotroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.transparent,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              SizedBox(width: 20,),
              Icon(Icons.qr_code_scanner,color: Colors.black,),
              SizedBox(width: 20,),
              Container(
                color: Colors.white,
                height: 30,
                width: 320,
                child: TextFormField(
                  controller: searchCotroller,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black,),
                    hintText: "search....",
                      suffixIcon: Icon(Icons.search,color: Colors.black,),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
                      contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),SizedBox(width: 20,),
              Icon(Icons.notifications,color: Colors.black,),
              SizedBox(width: 20,),
              Icon(Icons.account_balance_wallet_rounded,color: Colors.black,),
          ],
        ),
      ),
    );
  }
}
