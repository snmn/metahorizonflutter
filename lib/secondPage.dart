import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return secondpageState();
  }
}
class secondpageState extends State<SecondPage>{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.only(left:15.0),
            child: Text("All Orders",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          const SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height/5,
                width: size.width/1.1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Column(
                  children: [
                    Container(

                      width: size.width/1.1,
                      height: 50,
                      padding: const EdgeInsets.only(left: 18,right: 20),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                        color: Colors.yellow

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                         Text("Order Id: 2",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                         Text("Accepted",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.note_alt,color: Colors.black,size: 20,),
                            Text("OrderNote",
                              style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold),)
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(Icons.punch_clock,color: Colors.black,size: 20,),
                            Text("14:20 PM",
                              style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold),)
                          ],
                        ),
                        Row(
                          children: const [
                            Text("Accepted",
                              style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}