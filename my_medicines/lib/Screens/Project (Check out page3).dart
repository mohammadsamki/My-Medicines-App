import 'package:flutter/material.dart';

class page24 extends StatefulWidget {

  @override
  _page24State createState() => _page24State();

}

class _page24State extends State<page24> {

  @override
  Widget build(BuildContext context) {
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
                    child: Text('Check out' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                  ),
                ],
              ),
          
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
          
                    Container(
                      margin: EdgeInsets.only(left: 40 , top: 20),
                      child: IconButton(
                        onPressed: (){}, 
                        icon: Icon(Icons.location_on , color: Colors.black , size: 30,)
                      ),
                    ),
          
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Text('.' , style: TextStyle(color: Color.fromRGBO(200, 199, 204, 1) , fontSize: 45),),
                          SizedBox(width: 2,),
                          Text('.' , style: TextStyle(color: Color.fromRGBO(200, 199, 204, 1) , fontSize: 45),),
                          SizedBox(width: 2,),
                          Text('.' , style: TextStyle(color: Color.fromRGBO(200, 199, 204, 1) , fontSize: 45),),
                          SizedBox(width: 2,),
                          Text('.' , style: TextStyle(color: Color.fromRGBO(200, 199, 204, 1) , fontSize: 45),),
                          SizedBox(width: 2,),
                          Text('.' , style: TextStyle(color: Color.fromRGBO(200, 199, 204, 1) , fontSize: 45),),
                        ],
                      ),
                    ),
          
                    Container(
                      margin: EdgeInsets.only(left: 5 , top: 20),
                      child: IconButton(
                        onPressed: (){}, 
                        icon: Icon(Icons.credit_card_outlined , size: 30 , color: Colors.black,)
                      ),
                    ),
          
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Text('.' , style: TextStyle(color: Color.fromRGBO(200, 199, 204, 1) , fontSize: 45),),
                          SizedBox(width: 2,),
                          Text('.' , style: TextStyle(color: Color.fromRGBO(200, 199, 204, 1) , fontSize: 45),),
                          SizedBox(width: 2,),
                          Text('.' , style: TextStyle(color: Color.fromRGBO(200, 199, 204, 1) , fontSize: 45),),
                          SizedBox(width: 2,),
                          Text('.' , style: TextStyle(color: Color.fromRGBO(200, 199, 204, 1) , fontSize: 45),),
                          SizedBox(width: 2,),
                          Text('.' , style: TextStyle(color: Color.fromRGBO(200, 199, 204, 1) , fontSize: 45),),
                        ],
                      ),
                    ),
          
                    Container(
                      margin: EdgeInsets.only(left: 5 , top: 20),
                      child: IconButton(
                        onPressed: (){}, 
                        icon: Icon(Icons.check_circle , size: 28 , color: Colors.black,)
                      ),
                    ),
          
                  ],
                ),
              ),
          
              SizedBox(height: 40,),
          
              Container(
                child: Text('Order Completed' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 27),),
              ),
          
              SizedBox(height: 20,),
          
              Container(
                child: Icon(Icons.check_circle_outline , size: 50,),
              ),
          
              SizedBox(height: 20,),
          
              Container(
                width: 220,
                child: Text('Thank you for your purchase.You can view your order in ‘My Orders’ section.' , textAlign: TextAlign.center,),
              ),
          
              SizedBox(height: 100,),
          
              Container(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(52, 52, 52, 1)
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, '/Project (Order page)');
                  }, 
                  child: Text('Continue shopping' , style: TextStyle(color: Colors.white , fontSize: 18),),
                ),
              ),
          
              SizedBox(height: 20,),
          
            ]
          )
        ],
      ),
    );
  }
}