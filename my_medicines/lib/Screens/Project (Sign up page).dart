import 'package:flutter/material.dart';
import '../Auth_Services.dart';

void main(){
  runApp(signUp());
}

class signUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : page5()
    );
  }

}

class page5 extends StatefulWidget {

  @override
  _page5State createState() => _page5State();

}

class _page5State extends State<page5> {

  final  _formKey = GlobalKey<FormState>();

  bool _passwordVisible = true;
  bool _passwordVisible1 = true;
  final TextEditingController _pass = TextEditingController();
  String? _email;
  String? _password;

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
                            Navigator.popUntil(context, ModalRoute.withName('/Project (Registration page)'));
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

              SizedBox(height: 70),

              Form(
                key: _formKey,
                child: Column(
                  children: [

                    Row(
                      children: [

                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 40),
                            child: TextFormField(
                              validator: (value) {
                                if(value!.isEmpty) {
                                  return 'Please enter your name';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'First Name',
                                hintStyle: TextStyle(color: Colors.grey),
                                enabledBorder: UnderlineInputBorder(      
                                  borderSide: BorderSide(color: Colors.grey),   
                                ),  
                              ),
                              onSaved: (newValue) {
                                print('First name: $newValue');
                              },
                            ),
                          ),
                        ),

                        SizedBox(width: 25),

                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 40),
                            child: TextFormField(
                              validator: (value) {
                                if(value!.isEmpty) {
                                  return 'Please enter your name';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'Last Name',
                                hintStyle: TextStyle(color: Colors.grey),
                                enabledBorder: UnderlineInputBorder(      
                                  borderSide: BorderSide(color: Colors.grey),   
                                ),  
                              ),
                              onSaved: (newValue) {
                                print('Last name: $newValue');
                              },
                            ),
                          ),
                        ),

                      ],
                    ),

                    SizedBox(height: 10),

                    Container(
                      width: 315,
                      child: TextFormField(
                        validator: (value) {
                          if(value!.isEmpty) {
                            return 'Please enter your email';
                          }
                          if(value.contains('@gmail.com') == true){}
                          else{
                            return "not contain '@gmail.com'";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'E-mail',
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: UnderlineInputBorder(      
                            borderSide: BorderSide(color: Colors.grey),   
                          ),  
                        ),
                        onSaved: (newValue1) {
                          setState(() {
                            _email = newValue1;
                          });
                        },
                      ),
                    ),

                    SizedBox(height: 10),

                    Container(
                      width: 315,
                      child: TextFormField(
                        controller: _pass,
                        validator: (value) {
                          if(value!.isEmpty) {
                            return 'Please enter your password';
                          }
                          if(value.length < 8){
                            return 'Password less than 8';
                          }
                          return null;
                        },
                        obscureText: _passwordVisible,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey),
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
                              margin: EdgeInsets.only(top: 8),
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
                          setState(() {
                            _password = newValue;
                          });
                        },
                      ),
                    ),

                    SizedBox(height: 10),

                    Container(
                      width: 315,
                      child: TextFormField(
                        validator: (value) {
                          if(value!.isEmpty) {
                            return 'Please enter your password';
                          }
                          else if(value != _pass.text){
                            return 'Password does not match';
                          }
                          return null;
                        },
                        obscureText: _passwordVisible1,
                        decoration: InputDecoration(
                          hintText: 'Confirme Password',
                          hintStyle: TextStyle(color: Colors.grey),
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
                              margin: EdgeInsets.only(top: 8),
                              child: Icon(
                                _passwordVisible1
                                ? Icons.visibility_off
                                : Icons.visibility,
                                color: Colors.grey,
                                size: 20,
                              ),
                            ),
                          ),  
                        ),
                        onSaved: (newValue) {
                          print('Confirme Password: $newValue');
                        },
                      ),
                    ),

                    SizedBox(height: 50),

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
                            sign_Up(_email! , _password!);
                          }
                          else{
                            print('error');
                          }
                        }, 
                        child: Text('Sign Up' , style: TextStyle(color: Colors.white , fontSize: 20),)
                      ),
                    ),

                  ],
                )
              ),

              SizedBox(height: 30,),

              Container(
                margin: EdgeInsets.only(left: 62),
                child: Row(
                  children: [
                    Container(
                      width: 110,
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text('OR' , style: TextStyle(color: Colors.grey , fontSize: 18),),
                    SizedBox(width: 10),
                    Container(
                      width: 110,
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    
                  ],
                ),
              ),

              SizedBox(height: 30),

              Container(
                margin: EdgeInsets.only(left: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    IconButton(
                      onPressed: (){},
                      icon: CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage('assets/Images/Facebook.webp'),
                      ),
                    ),

                    SizedBox(width: 50),
                    
                    IconButton(
                      onPressed: (){
                        googleSignIn();
                      },
                      icon: CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage('assets/Images/Google.png'),
                      ),
                    ),

                    SizedBox(width: 50),

                    IconButton(
                      onPressed: (){},
                      icon: CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage('assets/Images/Twitter.webp'),
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(height: 5),

              Container(
                margin: EdgeInsets.only(left: 88),
                child: Row(
                  children: [

                    Text('Already have account? ' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold)),
                    
                    Container(
                      margin: EdgeInsets.only(bottom: 2),
                      child: IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/Project (Log in user page)');
                        },
                        icon: Text('Log In' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold , decoration: TextDecoration.underline , color: Colors.grey))
                      ),
                    ),

                  ],
                ),
              ),
          
            ],
          ),
        ],
      ),
    );
  }
}