
import 'package:flutter/material.dart';

import 'SecondPage.dart';

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }

}
class HomeState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return
      Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(bottom: 20.0),child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.beach_access,size: size.width/7,color: const Color(
                      0xff550909),),
                  const Text("BILDR.",
                    style: TextStyle(color: Colors.black,fontSize: 26,
                        fontWeight: FontWeight.w900),)
                ],
              ),)
              ,
              Container(
                height: size.height/2.5,
                width: size.width/1.1,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20,),
                    const Padding(padding: EdgeInsets.only(left: 25,top: 15),
                        child: Text("Sign in",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 22),)),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 50,
                        width: size.width/1.2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 15.0), // Adjust the value as needed
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Email", style: TextStyle(color: Colors.black87, fontSize: 14)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 50,
                        width: size.width/1.2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 15.0), // Adjust the value as needed
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Password", style: TextStyle(color: Colors.black87, fontSize: 14)),
                          ),
                        ),                           ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(

                              MaterialPageRoute(
                                builder: (context) => SecondPage(),
                              ),
                            );
                          },

                          child: Container(
                            height: 50,
                            width: 170,
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: const Center(child: Text("Sign In",style: TextStyle(fontSize: 17,color: Colors.white, fontWeight: FontWeight.w900), )),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Sign Up | Forgot Password?")
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
  }
}