import 'package:flutter/material.dart';

void main(){
  runApp(page2());
}

class page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Color.fromRGBO(166, 232, 253, 100),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 344),
              child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon:Icon(Icons.arrow_back)
              ),
            )
          ],
        ),

        body: Container(
          color: Color.fromRGBO(166, 232, 253, 100),
          child: Column(
            children: [

              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text('About the application' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 25),),
              ),

              Container(
                margin: EdgeInsets.only(left: 30 , right: 20, top: 50),
                child: Text('The My Medicines application is an application for purchasing and delivering medicine to a place and for inquiring about something.' , style: TextStyle(fontSize: 20),)
              ),
              
            ],
          ),
        ),
      ),
    );
    
  }
}