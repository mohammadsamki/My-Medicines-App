import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(UpdateDrugrating());
}

class UpdateDrugrating extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: page35(),
    );
  }

}

class page35 extends StatefulWidget {

  @override
  _page35State createState() => _page35State();

}

class _page35State extends State<page35> {

  double _sliderValue = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [

              Stack(
                children: [

                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      child: Image.asset('assets/Images/Medicine 1.png'),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 30 , top: 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black, 
                          offset: Offset(0, 1),
                          blurRadius: 2
                        ),
                      ],
                    ), 
                    child: SizedBox(
                      height: 33,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: Container(
                            margin: EdgeInsets.only(right: 1.3),
                            child: Icon(Icons.arrow_back_ios_rounded , color: Colors.black , size: 18,)
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                ]
              ),

              SizedBox(height: 80,),

              Container(
                child: Text('Enter new rating' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
              ),

              SizedBox(height: 40,),

              Container(
                child: Slider(
                  value: _sliderValue,
                  min: 1.0,
                  max: 10.0,
                  thumbColor: Colors.blue,
                  inactiveColor: Color.fromARGB(255, 223, 219, 219),
                  activeColor: Color.fromARGB(255, 106, 231, 231),
                  onChanged: (value){
                    setState(() {
                      _sliderValue = value;
                      print('Rating: $_sliderValue');
                    });
                  },
                ),
              ),
              Text('Rating Drug: $_sliderValue / 10.0'),


              SizedBox(height: 80),
              
              Container(
                height: 40,
                width: 240,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(140, 248, 239, 1),
                    side: BorderSide()
                  ),
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => CupertinoAlertDialog(
                        title: Text('For confirmation'),
                        content: Text('Do you want to change this rating?'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: (){
                              showDialog(
                                context: context,
                                builder: (BuildContext context) => CupertinoAlertDialog(
                                  title: Text('The rating has been changed'),
                                  content: Icon(Icons.check_circle_outline , size: 30,),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pushNamed(context, '/Project (Admin update drug page2)'),
                                      child: Text('Cancel'),
                                    ),
                                  ]
                                )
                              );
                            },
                            child: Text('Ok')
                          ),
                        ],
                      ),
                    );
                  },
                      
                  child: Text('Confirm' , style: TextStyle(color: Colors.white , fontSize: 24)),
                ),
              ),


            ],
          )
        ],
      ),
    );
  }
}