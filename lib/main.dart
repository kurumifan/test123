import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyStatelessWidget()
  ));
}


class MyStatelessWidget extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Stateless Widget"),),
      body:new Container(
        padding: new EdgeInsets.all(50.0),
             child: new Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment:CrossAxisAlignment.stretch ,
          children: <Widget>[
            new MyCard(
              title: new Text("I love Flutter",
              style: new TextStyle(
                fontSize: 20.0
              )
              ),
              icon: new Icon(Icons.favorite,size: 20.0,color: Colors.redAccent,),
            ),
            new Padding(padding: new EdgeInsets.all(50.0),),
            new MyCard(
              title: new Text("I love donuts",
               style: new TextStyle(
                fontSize: 30.0
              )
              ),
              icon: new Icon(Icons.donut_large,size: 30.0,color: Colors.green)
            ),
            new MyCard(
              title: new Text("I see you!",
               style: new TextStyle(
                fontSize: 40.0
              )),
              icon: new Icon(Icons.visibility,size: 40.0,color: Colors.blue)
            )
          ],
        )
      )
    );
  }
}

class MyCard extends StatelessWidget{
  MyCard({this.title,this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context){
    return new Container(
      padding: new EdgeInsets.only(bottom:20.0),
      child:new Card(
        child:new Container(
          padding: new EdgeInsets.all(10.0),
         child:new Column(
        children: <Widget>[
        this.title,
        this.icon
        ],
      )
      ) 
      )
    );
  }
}