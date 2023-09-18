import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return secondPageState();
  }
}

class secondPageState extends State<SecondPage>{
  @override
  Widget build(BuildContext context){
    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
     appBar: AppBar(backgroundColor: Colors.white),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,



        children: [
          SizedBox(height: 20),

          Padding(padding: EdgeInsets.only(left: 15),
          child:   Text("Orders",style: TextStyle( color: Colors.black,fontSize: 32,fontWeight: FontWeight.bold),),

          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Container(
                height: size.height/4.2,
                width: size.width/1.1,

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      width: size.width/1.1,
                      height: 50,
                        decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),),),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Order Id: 2",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                            Text("Accepted",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.check_box_outline_blank,color: Colors.black,size: 20,),
                              Text("OrderNote",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Colors.black),)
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.check_box_outline_blank,color: Colors.black,size: 25,),
                              Text("14:59",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Colors.black),),
                              SizedBox(width: 8.0),
                              Text("Apr 19, 2022",style: TextStyle(fontSize: 11, color:Colors.black),)
                            ],
                          ),

                        ],
                      ),


                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text("Spicy and more spicy chicken with extra olive oil are added with garlic and vinegar",
                              style: TextStyle(color: Colors.black,fontSize: 15),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.check_box_outline_blank,color: Colors.black,size: 20,),
                                  Text("No. of items:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Colors.black),),

                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.check_box_outline_blank,color: Colors.black,size: 20,),
                                  Text("Written by:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Colors.black),),
                                  Text("Random",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Colors.black),)

                                ],
                              ),

                            ],
                          ),
                        )
                      ],
                    )

                  ],
                ),


              ),

            ],
          )
        ],
      ),
    );
  }
}