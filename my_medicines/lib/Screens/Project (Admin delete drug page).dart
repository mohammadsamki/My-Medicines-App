import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(adminDeleteDrug());
}

class adminDeleteDrug extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : page29()
    );
  }

}

class page29 extends StatefulWidget {

  @override
  _page29State createState() => _page29State();

}

class _page29State extends State<page29> {

  final  _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
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
                      child: Image.asset('assets/Images/Medicine.png'),
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

              Form(
                key : _formKey,
                child: Column(
                  children: [

                    Container(
                      width: 330,
                      child: TextFormField(
                        validator: (value) {
                          if(value!.isEmpty) {
                            return 'Please enter drug name or serial number';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Drug Name Or Serial Number',
                          border: OutlineInputBorder()
                        ),
                      ),
                    ),

                    SizedBox(height: 80,),

                    Container(
                      width: 200,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(140, 248, 239, 1),
                          side: BorderSide()
                        ),
                        onPressed: (){
                          if(_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => CupertinoAlertDialog(
                                title: Center(child: Text('Add Medicine')),
                                content: Container(
                                  height: 50,
                                  child: Column(
                                    children: [
                                      Text('Medication added'),
                                      Icon(Icons.check_circle_outline , size: 30,),
                                    ],
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'Ok'),
                                    child: Text('OK'),
                                  ),
                                ]     
                              )
                            );
                          }
                          else{
                            print('error');
                          }
                        }, 
                        child: Row(
                          children: [
                            Icon(Icons.add_circle , color: Colors.grey,),
                            SizedBox(width: 4),
                            Text('Delete Medicine' , style: TextStyle(fontSize: 17),)
                          ],
                        )
                      ),
                    ),

                    SizedBox(height: 20,),

                  ],
                )
              )

            ],
          ),
          
        ],
      ),
    );
  }
}