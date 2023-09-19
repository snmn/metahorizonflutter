
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState(){
    return secondpageState();
  }

}

class secondpageState extends State<SecondPage>{

  showContainer(BuildContext context, int orderid){
    var size = MediaQuery.of(context).size;
    return Container(
      //  height: size.height/4,
      width: size.width/1.1,
      padding: const EdgeInsets.only(bottom: 0.0),
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
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text("Order Id :$orderid" , style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                const Text("Accepted", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Container(
            width: size.width/1.2,
            child: const Row(
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
          ),
          const SizedBox(height: 15,),
          Container(
            width: size.width/1.2,
            child: const Text("More spicy and crispy chickened with extra olive oil and garlic with a hint of vinegar."
                ,style: TextStyle(overflow: TextOverflow.visible),maxLines: 3),
          ),

          const SizedBox(height: 15,),
          Container(
            padding: const EdgeInsets.only(left:15),
            // width: size.width/1.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    ),
                    //  const SizedBox(height: 8,)
                  ],
                ),
                Container(
                  width: size.width/3,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                      )
                  ),
                  child:  const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check_box,color: Colors.white,),
                          Text(" Total", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.currency_rupee_outlined,color: Colors.white,),
                          Text(" 420.00", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

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
          showContainer(context, 200),
          SizedBox(height: 10,),
          showContainer(context, 3)
        ],
      ),
    );
  }
}