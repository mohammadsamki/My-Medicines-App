import 'package:flutter/material.dart';

void main(){
  runApp(logInAdmin());
}

class logInAdmin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : page20()
    );
  }

}

class page20 extends StatefulWidget {

  @override
  _page20State createState() => _page20State();

}

class _page20State extends State<page20> {

  final  _formKey = GlobalKey<FormState>();

  bool _passwordVisible = true;
  String em = 'mm';
  String pp = 'pp';

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

              SizedBox(height: 70),

              Form(
                key: _formKey,
                child: Column(
                  children: [

                    Container(
                      width: 300,
                      child: TextFormField(
                        validator: (value) {
                          if(value!.isEmpty) {
                            return 'Please enter your email or username';
                          }
                          if(value != em){
                            return 'Wrong email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Email or username',
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: UnderlineInputBorder(      
                            borderSide: BorderSide(color: Colors.grey),   
                          ),  
                        ),
                        onSaved: (newValue) {
                          print('Email or username: $newValue');
                        },
                      ),
                    ),

                    SizedBox(height: 10),

                    Container(
                      width: 300,
                      child: TextFormField(
                        validator: (value) {
                          if(value!.isEmpty) {
                            return 'Please enter your password';
                          }
                          if(value != pp){
                            return 'Wrong password';
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
                          print('Password: $newValue');
                        },
                      ),
                    ),

                    Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(right: 40),
                      child: IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/Project (Forgot password page)');
                        },
                        icon: Text('Forgot Password?' , style: TextStyle(color: Colors.grey),)
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
                            Navigator.pushNamed(context, '/Project (Admin home page)');
                          }
                          else{
                            print('error');
                          }
                        }, 
                        child: Text('Log In' , style: TextStyle(color: Colors.white , fontSize: 20),)
                      ),
                    ),

                  ],
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}