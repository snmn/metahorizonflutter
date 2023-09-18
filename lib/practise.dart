import 'dart:io';

void main(){
  print('welcome to flutter!');
  stdout.write('Enter you name:');
  var name=stdin.readLineSync();
  print("welcome,$name");

  for(int i=0;i<5;i++){
    print("value + ${i+2}");
  }

 var data=Human();//creating a class object
  data.printHuman("hello flutter");
  data.printHuman("hello flutter im robot");
  data.printHuman("hello flutter im human");
  int sum =data.sum(5,10);
  print(sum);


  var listName=[10,20,30,40,50];

  listName.add(60);
  listName.insert(5, 100);
  listName[2]=500;
  //print(listName);
  
  var listName1=[];

  listName1.addAll(listName);
  print("$listName1");
  
  //declaration of variables
  int a;
  String s="sagar regmi";
  a=10;
  BigInt longValue;
  longValue=BigInt.parse('98978656879808866657');
  print(a);
  print(s);
  print(longValue);


}

class Human{

  Human(){
//default constructor
  print("hi! im sagar regmi");
  }
  void printHuman(String msg){
    print(msg);
  }
  int sum(int a,int b){
    return a+b;
  }
}



Container(

height:300,
width:300,

decoration: BoxDecoration(

borderRadius: BorderRadius.circular(25)
),

child: Column(
mainAxisAlignment: MainAxisAlignment.spaceAround,
crossAxisAlignment: CrossAxisAlignment.stretch,

children: [
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Text('A',style:TextStyle(fontSize: 25)),
Text('B',style:TextStyle(fontSize: 25)),

Column(
children: [
ElevatedButton(onPressed:(){
print("button clicked!");
}, child: Text("Click Me")),
ElevatedButton(onPressed:(){
print("button clicked!");
}, child: Text("Click Me")),
],
),
Text('D',style:TextStyle(fontSize: 25)),
Text('E',style:TextStyle(fontSize: 25)),
ElevatedButton(onPressed:(){
print("button clicked!");
}, child: Text("Click Me"))
],
),
Text('A',style:TextStyle(fontSize: 25)),
Text('B',style:TextStyle(fontSize: 25)),
Text('C',style:TextStyle(fontSize: 25)),
Text('D',style:TextStyle(fontSize: 25)),
Text('E',style:TextStyle(fontSize: 25)),
ElevatedButton(onPressed:(){
print("button clicked!");
}, child: Text("Click Me"))
],
)
)

