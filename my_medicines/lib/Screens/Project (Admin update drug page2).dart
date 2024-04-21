import 'package:flutter/material.dart';

void main(){
  runApp(adminUpdateDrug2());
}

class adminUpdateDrug2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: page30(),
    );
  }

}

class page30 extends StatefulWidget {

  @override
  _page30State createState() => _page30State();

}

class _page30State extends State<page30> {

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
                            Navigator.pushNamed(context, '/Project (Admin add or update or delete page)');
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

              SizedBox(height: 40,),

              Container(
                width: 280,
                child: Text('Choose the drug information you want to modify' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold) , textAlign: TextAlign.center,),
              ),

              SizedBox(height: 40,),

              Container(
                child: Column(
                  children: [

                    IconButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/Project (Update drug name page)');
                      }, 
                      icon: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey[200],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 3,
                              offset: Offset(0 , 2)
                            )
                          ]
                        ),
                        child: Text('Drug Name' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                      )
                    ),

                    SizedBox(height: 15,),

                    IconButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/Project (Update drug price page)');
                      }, 
                      icon: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey[200],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 3,
                              offset: Offset(0 , 2)
                            )
                          ]
                        ),
                        child: Text('Drug Price' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                      )
                    ),

                    SizedBox(height: 15,),

                    IconButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/Project (Update drug note page)');
                      }, 
                      icon: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey[200],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 3,
                              offset: Offset(0 , 2)
                            )
                          ]
                        ),
                        child: Text('Drug Note' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                      )
                    ),

                    SizedBox(height: 15,),

                    IconButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/Project (Update drug image page)');
                      }, 
                      icon: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey[200],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 3,
                              offset: Offset(0 , 2)
                            )
                          ]
                        ),
                        child: Text('Drug Image' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                      )
                    ),

                    SizedBox(height: 15,),

                    IconButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/Project (Update drug rating page)');
                      }, 
                      icon: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey[200],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 3,
                              offset: Offset(0 , 2)
                            )
                          ]
                        ),
                        child: Text('Drug Rating' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                      )
                    ),

                  ],
                ),
              ),

              SizedBox(height: 80,),

            ],
          )
        ],
      ),
    );
  }
}