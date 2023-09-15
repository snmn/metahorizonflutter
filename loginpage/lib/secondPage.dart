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
                Row(
                  children: [
                    Icon(Icons.note_alt, color: Colors.black,  size:30,),
                    Text("OrderNotes",
                      style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold ),
                    ),
                    Text("")
                  ],
                ),
              ],
            ),

          ),
        ],
      ),
    );
  }
}
