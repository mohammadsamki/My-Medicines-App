import 'package:flutter/material.dart';

void main(){
  runApp(registration());
}

class registration extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: page3()
    );
  }

}

class  page3 extends StatefulWidget {

  @override
  _page3State createState() => _page3State();

}

class _page3State extends State<page3> {

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromRGBO(237, 236, 240, 1),
              Color.fromRGBO(83, 174, 182, 1),
              Color.fromRGBO(29, 90, 189, 1),
            ],
          ),
        ),
        child: ListView(
          children: [
            Column(
              children: [

                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/Project (Home page)');
                    },
                    icon:Icon(Icons.arrow_back)
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 80),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(55)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 3),
                        blurRadius: 3
                      )
                    ]
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(55)),
                    child: Image.asset('assets/Images/My Medicine 1.png' , width: 210,)
                  ),
                ),

                SizedBox(height: 100),

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 70, 67, 67),
                        offset: Offset(0, 4),
                      )
                    ]
                  ),
                  width: 200,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(91, 196, 224, 1)
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/Project (Admin or User page)');
                    }, 
                    child: Text('Log In' , style: TextStyle(fontSize: 28 , fontWeight: FontWeight.bold , color: Colors.white),),
                  ),
                ),

                SizedBox(height: 30),

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 70, 67, 67),
                        offset: Offset(0, 4),
                      )
                    ]
                  ),
                  width: 200,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(67, 176, 180, 1)
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/Project (Sign up page)');
                    }, 
                    child: Text('Sign Up' , style: TextStyle(fontSize: 28 , fontWeight: FontWeight.bold , color: Colors.white),),
                  ),
                ),

              ],
            )
          ]
        ),
      ),
    );
  }
}