import 'package:flutter/material.dart';

void main(){
  runApp(forgot());
}

class forgot extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : page6()
    );
  }

}

class page6 extends StatefulWidget {

  @override
  _page6State createState() => _page6State();

}

class _page6State extends State<page6> {

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

              SizedBox(height: 20,),

              Container(
                margin: EdgeInsets.only(right: 93),
                child: Text('Forgot password?' , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold)),
              ),

              SizedBox(height: 20),
              
              Container(
                margin: EdgeInsets.only(left: 37 , right: 45),
                child: Text('Enter email associated with your account '
                            "and we'll send and email with intructions to "
                            'reset your password' , style: TextStyle(fontSize: 17 , color: Colors.grey),
                ),
              ),

              SizedBox(height: 40),
              
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 30 , left: 30),
                      child: TextFormField(
                                    
                        validator: (value) {
                                    
                          if(value!.isEmpty){
                            return 'Please enter your email';
                          }

                          if(value.contains('@gmail.com') == true){}

                          else{
                            return "not contain '@gmail.com'";
                          }
                                  
                          return null;
                        },
                                    
                        decoration: InputDecoration(
                          labelText: 'enter your email here',
                          prefixIcon: Container(
                            margin: EdgeInsets.only(right: 0),
                            child: IconButton(
                              onPressed: (){}, 
                              icon: Icon(Icons.email_outlined , color: Colors.grey),
                            ),
                          ),
                        ),
                                    
                        onSaved: (newValue) {
                          print('Email: $newValue');
                        },
                                  
                      ),
                    ),
                  ]
                )
              ),

              SizedBox(height: 100),

              Container(
                height: 40,
                width: 240,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(21, 182, 155, 0.725)
                  ),
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      _formKey.currentState!.save();
                      Navigator.pushNamed(context, '/Project (Verification code page)');
                    }
                    else{
                      print('error');
                    }
                  }, 
                  child: Text('Next' , style: TextStyle(color: Colors.white , fontSize: 20),)
                ),
              ),
          
            ],
          ),
        ],
      ),
    );
  }
}