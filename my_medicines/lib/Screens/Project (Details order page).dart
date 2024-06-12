import 'package:flutter/material.dart';

class detailOrder extends StatefulWidget{

  @override
  _detailOrder createState() =>  _detailOrder();

}

class _detailOrder extends State<detailOrder>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
           Column(
            children: [

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35 , top: 35),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black, 
                          offset: Offset(0, 0.3)
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
                  Container(
                    margin: EdgeInsets.only(top: 35 , left: 90),
                    child: Text('Details Order' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                  ),
                ],
              ),

              SizedBox(height: 40,),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.5 , 3),
                      blurRadius: 2
                    )
                  ]
                ),
                width: 350,
                height: 140,
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10 , top: 20),
                        child: Row(
                          children: [
                            Text('Order number:' , style: TextStyle(fontSize: 17 , color: Colors.grey),),
                            SizedBox(width: 121,),
                            Text('#341' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10 , top: 20),
                        child: Row(
                          children: [
                            Text('Delivery address:' , style: TextStyle(fontSize: 17 , color: Colors.grey),),
                            SizedBox(width: 100,),
                            Container(
                              width: 100,
                              child: Text('Irbid-bani kenana' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),)
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 40,),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.5 , 3),
                      blurRadius: 2
                    )
                  ]
                ),
                width: 350,
                height: 140,
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10 , top: 10),
                            child: Text('Revanin' , style: TextStyle(fontSize: 16),)
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 190 , top: 10),
                            child: Text('x1' , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),)
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 260 , top: 10),
                            child: Text('JOD 1.5' , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),)
                          ),
                        ]
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10 , top: 10),
                            child: Text('Panadol' , style: TextStyle(fontSize: 16),)
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 190 , top: 10),
                            child: Text('x1' , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),)
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 260 , top: 10),
                            child: Text('JOD 4.3' , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),)
                          ),
                        ]
                      ),
                      Divider(),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10 , top: 10),
                            child: Text('Total' , style: TextStyle(fontSize: 16),)
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 260 , top: 10),
                            child: Text('JOD 5.8' , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),)
                          ),
                        ]
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 60,),
              Container(
                width: 180,
                height: 45,
                child: ElevatedButton.icon(
                  onPressed: (){
                    Navigator.pushNamed(context, '/Project (Home page)');
                  }, 
                  icon: Icon(Icons.home , size: 25,), 
                  label: Text('Home' , style: TextStyle(fontSize: 17 , fontWeight: FontWeight.bold),)
                ),
              )
            
            ],
          ),
        ]
      ),
    );
  }
}