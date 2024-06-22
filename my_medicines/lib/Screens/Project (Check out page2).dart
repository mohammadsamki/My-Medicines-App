import 'package:flutter/material.dart';

class page23 extends StatefulWidget {

  @override
  _page23State createState() => _page23State();

}

class _page23State extends State<page23> {

  final  _formKey = GlobalKey<FormState>();
  bool isChecked = false;

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
                        icon: Icon(Icons.check_circle , size: 28 , color: const Color.fromRGBO(200, 199, 204, 1),)
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(height: 10,),

              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 25),
                      child: Text('STEP 2' , style: TextStyle(color: Color.fromRGBO(29, 31, 34, 1)),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40),
                      child: Text('Payment' , style: TextStyle(color: Color.fromRGBO(29, 31, 34, 1) , fontSize: 25 , fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),

              Container(
                width: 340,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter number cart';
                          }
                          // if (value.length == 16){}
                          // else{
                          //   return 'Please enter 16 digit number';
                          // }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Card',
                        )
                      ),
                    ],
                  )
                ),
              ),

              SizedBox(height: 20,),

              Container(
                height: 50,
                width: 300,
                margin: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(52, 52, 52, 1)
                  ),
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      _formKey.currentState!.save();
                      Navigator.pushNamed(context, '/Project (Check out page3)');
                    }
                  }, 
                  child: Text('Place my order' , style: TextStyle(color: Colors.white , fontSize: 18),),
                ),
              ),

              SizedBox(height: 20,),

            ]
          ),

        ],
      ),
    );
  }
}