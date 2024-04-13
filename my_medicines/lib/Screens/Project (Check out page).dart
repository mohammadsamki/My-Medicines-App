import 'package:flutter/material.dart';

void main(){
  runApp(checkOut());
}

class checkOut extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : page22()
    );
  }

}

class page22 extends StatefulWidget {

  @override
  _page22State createState() => _page22State();

}

class _page22State extends State<page22> {

  final  _formKey = GlobalKey<FormState>();
  bool isChecked = false;

  var credit = Color.fromRGBO(200, 199, 204, 1);
  var check = Color.fromRGBO(200, 199, 204, 1);

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
                          onPressed: (){},
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
                        onPressed: (){
                          setState(() {
                            if (credit == Color.fromRGBO(200, 199, 204, 1)) {
                              credit = Colors.black;
                            } 
                            else {
                              credit =  Color.fromRGBO(200, 199, 204, 1);
                            }
                          });
                        }, 
                        icon: Icon(Icons.credit_card_outlined , size: 30 , color: credit,)
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
                        onPressed: (){
                          setState(() {
                            if (check == Color.fromRGBO(200, 199, 204, 1)) {
                              check = Colors.black;
                            } 
                            else {
                              check =  Color.fromRGBO(200, 199, 204, 1);
                            }
                          });
                        }, 
                        icon: Icon(Icons.check_circle , size: 28 , color: check,)
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
                      child: Text('STEP 1' , style: TextStyle(color: Color.fromRGBO(29, 31, 34, 1)),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40),
                      child: Text('Shipping' , style: TextStyle(color: Color.fromRGBO(29, 31, 34, 1) , fontSize: 25 , fontWeight: FontWeight.bold)),
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
                          if(value!.isEmpty){
                            return 'Field is required'; 
                          }
                          return null;
                        },

                        decoration: InputDecoration(
                          labelText: 'First name *',
                          labelStyle: TextStyle(color: Color.fromRGBO(119, 126, 144, 1))
                        ),

                      ),

                      SizedBox(height: 20,),

                      TextFormField(

                        validator: (value) {
                          if(value!.isEmpty){
                            return 'Field is required'; 
                          }
                          return null;
                        },

                        decoration: InputDecoration(
                          labelText: 'Last name *',
                          labelStyle: TextStyle(color: Color.fromRGBO(119, 126, 144, 1))
                        ),

                      ),

                      SizedBox(height: 20,),

                      TextFormField(

                        validator: (value) {
                          if(value!.isEmpty){
                            return 'Field is required'; 
                          }
                          return null;
                        },

                        decoration: InputDecoration(
                          labelText: 'Street name *',
                          labelStyle: TextStyle(color: Color.fromRGBO(119, 126, 144, 1))
                        ),

                      ),

                      SizedBox(height: 20,),

                      TextFormField(

                        validator: (value) {
                          if(value!.isEmpty){
                            return 'Field is required'; 
                          }
                          return null;
                        },

                        decoration: InputDecoration(
                          labelText: 'City *',
                          labelStyle: TextStyle(color: Color.fromRGBO(119, 126, 144, 1))
                        ),

                      ),

                      SizedBox(height: 20,),

                      TextFormField(

                        validator: (value) {
                          if(value!.isEmpty){
                            return 'Field is required'; 
                          }
                          return null;
                        },

                        decoration: InputDecoration(
                          labelText: 'Phone number *',
                          labelStyle: TextStyle(color: Color.fromRGBO(119, 126, 144, 1))
                        ),

                      ),

                      SizedBox(height: 50,),

                      Container(
                        margin: EdgeInsets.only(right: 150),
                        child: Text('Shipping method' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                      ),

                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30 , top: 30),
                              child: CircleAvatar(
                                radius: 13,
                                backgroundColor: Color.fromRGBO(80, 138, 123, 1),
                                child: CircleAvatar(
                                  radius: 4,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 45),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 20),
                                    child: Row(
                                      children: [
                                        Text('Free' , style: TextStyle(fontSize: 17 , fontWeight: FontWeight.bold),),
                                        SizedBox(width: 20,),
                                        Text('Delivery to home' , style: TextStyle(fontSize: 17 , fontWeight: FontWeight.bold , color: Color.fromRGBO(115, 118, 128, 1))),
                                      ],
                                    ),
                                  ),

                                  SizedBox(height: 10,),

                                  Container(
                                    margin: EdgeInsets.only(left: 25),
                                    child: Text('Delivery from 3 to 7 business days' , style: TextStyle(color: Color.fromRGBO(163, 165, 173, 1) , fontSize: 15),),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30 , top: 30),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  border:  Border.all(color: Color.fromRGBO(190, 191, 196, 1))
                                ),
                                child: CircleAvatar(
                                  radius: 13,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 4,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 45),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 11),
                                    child: Row(
                                      children: [
                                        Text('\$ 9.90' , style: TextStyle(fontSize: 17 , fontWeight: FontWeight.bold),),
                                        SizedBox(width: 20,),
                                        Text('Delivery to home' , style: TextStyle(fontSize: 17 , fontWeight: FontWeight.bold , color: Color.fromRGBO(115, 118, 128, 1))),
                                      ],
                                    ),
                                  ),

                                  SizedBox(height: 10,),

                                  Container(
                                    margin: EdgeInsets.only(left: 25),
                                    child: Text('Delivery from 4 to 6 business days' , style: TextStyle(color: Color.fromRGBO(163, 165, 173, 1) , fontSize: 15),),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30 , top: 30),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  border:  Border.all(color: Color.fromRGBO(190, 191, 196, 1))
                                ),
                                child: CircleAvatar(
                                  radius: 13,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 4,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 45),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 40),
                                    child: Row(
                                      children: [
                                        Text('\$ 9.90' , style: TextStyle(fontSize: 17 , fontWeight: FontWeight.bold),),
                                        SizedBox(width: 20,),
                                        Text('Fast Delivery' , style: TextStyle(fontSize: 17 , fontWeight: FontWeight.bold , color: Color.fromRGBO(115, 118, 128, 1))),
                                      ],
                                    ),
                                  ),

                                  SizedBox(height: 10,),

                                  Container(
                                    margin: EdgeInsets.only(left: 25),
                                    child: Text('Delivery from 2 to 3 business days' , style: TextStyle(color: Color.fromRGBO(163, 165, 173, 1) , fontSize: 15),),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ), 
                ),
              ),

              SizedBox(height: 50,),

              Container(
                margin: EdgeInsets.only(right: 170),
                child: Text('Coupon Code' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              ),

              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(247, 247, 248, 1),
                  borderRadius: BorderRadius.all(Radius.circular(11))
                ),
                margin: EdgeInsets.only(top: 20),
                height: 60,
                width: 320,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text('Have a code? type it here...' , style: TextStyle(color: Color.fromRGBO(203, 205, 216, 1)),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 55),
                      child: Text('Validate' , style: TextStyle(color: Color.fromRGBO(80, 138, 123, 1)),),
                    )
                  ],
                ),
              ),

              SizedBox(height: 40,),

              Container(
                margin: EdgeInsets.only(right: 170),
                child: Text('Billing Address' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              ),

              SizedBox(height: 10,),

              Container(
                margin: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 1.3,
                      child: Checkbox(
                        side: BorderSide(
                          color: Color.fromRGBO(190, 191, 196, 1)
                        ),
                        value: isChecked,   
                        onChanged: (value){
                          setState(() {
                            isChecked = value!;
                            print('Accept Terms and Conditions: $isChecked');
                          });
                        },
                      ),
                    ),
                    Text('Copy address data from shipping' , style: TextStyle(color: Color.fromRGBO(87, 87, 87, 1) , fontSize: 16),),
                  ],
                ),
              ),

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
                    }
                  }, 
                  child: Text('Continue to payment' , style: TextStyle(color: Colors.white , fontSize: 18),),
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