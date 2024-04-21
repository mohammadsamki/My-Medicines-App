import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(UpdateDrugPrice());
}

class UpdateDrugPrice extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: page32(),
    );
  }

}

class page32 extends StatefulWidget {

  @override
  _page32State createState() => _page32State();

}

class _page32State extends State<page32> {

  var _formKey = GlobalKey<FormState>();

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
                child: Text('Enter new price' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
              ),

              SizedBox(height: 40,),

              Container(
                width: 330,
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter new price';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'New Price',
                      border: OutlineInputBorder()
                    ),
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
                    if(_formKey.currentState!.validate()){
                      _formKey.currentState!.save();
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => CupertinoAlertDialog(
                          title: Text('For confirmation'),
                          content: Text('Do you want to change this price?'),
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
                                    title: Text('The price has been changed'),
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
                    }
                
                    else{
                      print('error');
                    }
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