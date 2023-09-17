import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SecondPageState();
  }
}

class SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          const Text("All Orders", style: TextStyle(color: Colors.brown, fontSize: 20,),),
          Container(
            height: size.height/4,
            width: size.width/1/1,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)
            ),
            child: Column(
              children: [
                Container(
                  width: size.width/1,
                  height: 60,
                  padding: const EdgeInsets.only(left: 35, right: 35),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                  color: Colors.greenAccent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("OrderId",style: TextStyle(fontSize: 23,color: Colors.white, fontWeight: FontWeight.bold), ),
                      Text("Accepted",style: TextStyle(fontSize: 23,color: Colors.white, fontWeight: FontWeight.bold), ),
                    ],
                  ),
                ),
                SizedBox(height:15,),   // give the size of box

                Row(
                  //green color first row created
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0),),
                    Icon(Icons.check_box_outline_blank, color: Colors.black,  size:20,),  // icons and size and color
                    Text("OrderNotes",
                      style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold ),),
                    SizedBox(width: 140), // give the space between teo text
                    Icon(Icons.check_box_outline_blank, color: Colors.black, size: 20,),  // Icos add
                    Text("3:45PM",
                      style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                    Text("  Sep12,2023", style: TextStyle(color:Colors.grey ,fontSize: 14, fontWeight: FontWeight.bold),),
                  ],

                ),

                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left:10, right: 30),),
                    Flexible(
                      child: Text("Spicy and more spicy chicken with extra olive oil are added with garlic and vinegar",
                      style: TextStyle(color: Colors.black,fontSize: 15),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),)
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check_box_outline_blank, color: Colors.black, size: 20,),  // Icos add
                    Text("No of items:",
                      style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                    Text(" 6 ", style: TextStyle(color:Colors.grey ,fontSize: 14, fontWeight: FontWeight.bold),),
                  ],
                )
              ],
            ),

          ),
        ],
      ),
    );
  }
}

