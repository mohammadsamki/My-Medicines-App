import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(UpdateDrugImage());
}

class UpdateDrugImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: page34(),
    );
  }

}

class page34 extends StatefulWidget {

  @override
  _page34State createState() => _page34State();

}

class _page34State extends State<page34> {

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
                child: Text('Enter new image' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
              ),

              SizedBox(height: 40,),

              Container(
                height: 40,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 3),
                    )
                  ]
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white
                  ),
                  onPressed: (){}, 
                  child: Row(
                    children: [
                      Icon(Icons.attach_file , size: 22,),
                      SizedBox(width: 5),
                      Text('Drug Image')
                    ],
                  )
                ),
              ),

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
                        content: Text('Do you want to change this image?'),
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
                                  title: Text('The image has been changed'),
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