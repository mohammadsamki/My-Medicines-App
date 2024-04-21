import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(adminUpdateDrug1());
}

class adminUpdateDrug1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : page28()
    );
  }

}

class page28 extends StatefulWidget {

  @override
  _page28State createState() => _page28State();

}

class _page28State extends State<page28> {

  final _formKey = GlobalKey<FormState>();

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

              SizedBox(height: 40,),

              Container(
                width: 280,
                child: Text('Enter the medication whose information you want to update' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold) , textAlign: TextAlign.center,),
              ),

              SizedBox(height: 30,),

              Form(
                key: _formKey,
                child: Container(
                  width: 330,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter name drug or serial number';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Drug Name Or Serial Number',
                      border: OutlineInputBorder()
                    ),
                  ),
                ),
              ),

              SizedBox(height: 80,),

              Container(
                width: 160,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(140, 248, 239, 1),
                    side: BorderSide()
                  ),
                  onPressed: (){
                    if(_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Navigator.pushNamed(context, '/Project (Admin update drug page2)');
                    }
                    else{
                      print('error');
                    }
                  }, 
                  child:Text('Next' , style: TextStyle(fontSize: 22),)
                ),
              ),


            ],
          ),
          
          
        ],
      ),
    );
  }
}