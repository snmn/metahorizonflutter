import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SecondPageState();
  }
}

class SecondPageState extends State<SecondPage> {
  showContainer(BuildContext context, int orderid){
    var size = MediaQuery.of(context).size;
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        // height: size.height/4.2, // height of the container
        //  width: size.width/1,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)
        ),
        child: Column(
          children: [
            Container(
              // width: size.width/1.0,
              height: 60, // order id accepted id height
              padding: const EdgeInsets.only(left: 35, right: 35,bottom: 0),
              decoration:const BoxDecoration(
                  color: Colors.deepOrange,

                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,  // space give in order and accepted
                children: [
                  Text("OrderId: $orderid",style: TextStyle(fontSize: 23,color: Colors.white, fontWeight: FontWeight.bold), ),
                  Text("Accepted",style: TextStyle(fontSize: 23,color: Colors.white, fontWeight: FontWeight.bold), ),
                ],
              ),
            ),
            SizedBox(height:15,),   // give the size of box

            Row(
              //green color first row created
              children: [
                Row(
                  children: [

                    Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0),),
                    Icon(Icons.check_box_outline_blank, color: Colors.black,  size:20,),  // icons and size and color
                    Text("OrderNotes",
                      style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold ),),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 90), // give the space between teo text
                    Icon(Icons.check_box_outline_blank, color: Colors.black, size: 20,),  // Icos add
                    Text("3:45PM",
                      style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                    Text("  Sep 12,2023", style: TextStyle(color:Colors.grey ,fontSize: 14, fontWeight: FontWeight.bold),),

                  ],
                )
              ],

            ),

            Row(
              children: [
                Padding(padding: EdgeInsets.only(left:20, right: 0),),
                Flexible(
                  child: Text("\nSpicy and more spicy chicken with extra olive oil are added with garlic and vinegar",
                    style: TextStyle(color: Colors.black,fontSize: 15),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),)
              ],
            ),
            SizedBox(height: 10,),  //give space between two column
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:EdgeInsets.only(left:15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.check_box_outline_blank, color: Colors.black, size: 20,),  // Icos add
                          Text("No of items:",
                            style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                          Text(" 6 ", style: TextStyle(color:Colors.grey ,fontSize: 14, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.check_box_outline_blank, color: Colors.black, size: 20,),  // Icos add
                          Text("Created By:",
                            style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                          Text(" Random ", style: TextStyle(color:Colors.grey ,fontSize: 14, fontWeight: FontWeight.bold),),

                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  width: size.width/3,
                  decoration: const BoxDecoration(
                      color: Colors.deepPurple,

                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(30)
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check_box_outline_blank, color: Colors.white, size: 20,),  // Icos add
                          Text(" Total ", style: TextStyle(color:Colors.white ,fontSize: 20, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.currency_rupee_outlined,color: Colors.white,),
                          Text("200.00", style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold ),)

                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,

      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:120),
            child: const Text("All Orders", style: TextStyle(color: Colors.white
              , fontSize: 30,fontWeight: FontWeight.bold),),
          ),
          showContainer(context, 200),
          SizedBox(height: 10,),  // give space
          showContainer(context, 2),
          SizedBox(height: 10,),  // give space
          showContainer(context, 2),
          SizedBox(height: 10,),  // give space
          showContainer(context, 2),
        ],
      ),
    );
  }
}
