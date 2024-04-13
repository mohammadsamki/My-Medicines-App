import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(newPassword());
}

class newPassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : page8()
    );
  }

}

class page8 extends StatefulWidget {

  @override
  _page8State createState() => _page8State();

}

class _page8State extends State<page8>{

  final _formKey = GlobalKey <FormState>();

  final TextEditingController _pass = TextEditingController();

  bool _passwordVisible = true;
  bool _passwordVisible1 = true;
  String password = '';
  String confirmPassword = '';
  Color buttonColor = Colors.grey;

  @override
  Widget build(BuildContext context){
    return  Scaffold(
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

              SizedBox(height: 20),

              Container(
                margin: EdgeInsets.only(right: 38.7),
                child: Text('Create new password' , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold))
              ),

              SizedBox(height: 20),

              Container(
                margin: EdgeInsets.only(left: 40 , right: 50),
                child: Text('your new password must be different from previously used password' , style: TextStyle(fontSize: 17 , color: Colors.grey),
                ),
              ),

              SizedBox(height: 30),

              Form(
                key: _formKey,
                child: Column(
                  children: [
            
                    Container(
                      width: 320,
                      child: TextFormField(
                      
                        onChanged: (value) {
                      
                          setState(() {
                            password=value;
                          });
                      
                        },
                      
                        controller: _pass,
                        validator: (value) {
                          
                          if(value!.isEmpty){
                            return 'Please enter password';
                          }
                          if(value.length < 8){
                            return 'Password less than 8';
                          }
                      
                          return null;
                        },
                      
                        obscureText: _passwordVisible,
                        decoration: InputDecoration(
                          labelText: "New Password",
                          labelStyle: TextStyle(fontSize: 14 , color: Colors.grey),
                          enabledBorder: UnderlineInputBorder(      
                            borderSide: BorderSide(color: Colors.grey),   
                          ),
                          suffixIcon: IconButton(
                            onPressed: (){
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            }, 
                            icon: Container(
                              margin: EdgeInsets.only(top: 22),
                              child: Icon(
                                _passwordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                                color: Colors.grey,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                                    
                        onSaved: (newValue) {
                          print('New password: $newValue');
                        },
                                  
                      ),
                    ),
            
                    SizedBox(height: 20),
            
                    Container(
                      width: 320,
                      child: TextFormField(
                      
                        onChanged: (value) {
                          
                          setState(() {
                            confirmPassword = value;
                          });
                      
                          if(confirmPassword == password){
                            setState(() {
                               buttonColor = Color.fromRGBO(21, 182, 155, 0.725);
                            });
                          }
                      
                          else{
                            setState(() {
                               buttonColor = Colors.grey;
                            });
                          }
                        },
                                    
                        validator: (value) {
                          
                          if(value!.isEmpty){
                            return 'Please enter password';
                          }
                      
                          else if(value != _pass.text){
                            return 'Password does not match';
                          }
                      
                          return null;
                        },
                      
                        obscureText: _passwordVisible1,
                        decoration: InputDecoration(
                          labelText: "Confirm Password",
                          labelStyle: TextStyle(fontSize: 14 , color: Colors.grey),
                            enabledBorder: UnderlineInputBorder(      
                              borderSide: BorderSide(color: Colors.grey),   
                            ),
                          suffixIcon: IconButton(
                            onPressed: (){
                              setState(() {
                                _passwordVisible1 = !_passwordVisible1;
                              });
                            }, 
                            icon: Container(
                              margin: EdgeInsets.only(top: 22),
                              child: Icon(
                                _passwordVisible1
                                ? Icons.visibility_off
                                : Icons.visibility,
                                color: Colors.grey,
                                size: 20,
                              ),
                            )
                          ),
                        ),
                                    
                        onSaved: (newValue) {
                          print('Confirme Password: $newValue');
                        },
                                  
                      ),
                    ),

                  ]
                )
              ),

              SizedBox(height: 80),
              
              Container(
                height: 40,
                width: 240,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor
                  ),
                  onPressed: (){
                    if(newPassword != '' && confirmPassword != ''){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => CupertinoAlertDialog(
                          title: Text('For confirmation'),
                          content: Text('Do you want to change this password?'),
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
                                    title: Text('The password has been changed'),
                                    content: Icon(Icons.check_circle_outline , size: 30,),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pushNamed(context, '/Project (Log in page)'),
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
                    if(_formKey.currentState!.validate()){
                      _formKey.currentState!.save();
                    }
                
                    else{
                      print('error');
                    }
                  },
                      
                  child: Text('Confirm' , style: TextStyle(color: Colors.white , fontSize: 20)),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}