
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState(){
    return secondpageState();
  }

}

class secondpageState extends State<SecondPage>{
  @override
  Widget build(BuildContext context){
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(backgroundColor: Colors.transparent,),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Row(
              children: [
                Text("All Order", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),),
              ],
            ),
          ),
          Container(
            height: size.height/4,
            width: size.width/1.1,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: size.width/1.1,
                  height: 50,
                  padding: const EdgeInsets.only(left: 18, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order Id : 123", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                      Text("Accepted", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.check_box),
                        Text("Order Note", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.check_box),
                        Text("14:20 PM", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                        Text("Apr 18, 2022")
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 15,),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("More spicy and crispy chickened with extra olive oil"),
                    Text("and garlic with a hint of vinegar.")
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  children: [
                    const Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.check_box),
                            Text("No. of items : 5", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.check_box),
                            Text("Created by : Random", style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: size.width/2,
                      decoration: const BoxDecoration(
                        color: Colors.grey
                      ),
                      child: const Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.check_box,),
                              Text("Total", style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined),
                              Text("420.00", style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}