import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../Auth_Services.dart';
import 'Project (Home page).dart';

class home extends StatefulWidget {

  @override
  State<home> createState() => _homeState();

}

class _homeState extends State<home> {

  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeFirebase(), 
        builder: (context , snapshot){
          if (snapshot.connectionState == ConnectionState.done){
            return page4();
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      ),
    );
  }
}

class page4 extends StatefulWidget {

  @override
  _page4State createState() => _page4State();

}

class _page4State extends State<page4> {

  final  _formKey = GlobalKey<FormState>();

  bool _passwordVisible = true;
  String em = 'mm';
  String pp = 'pp';

  static Future<User?> loginUsingEmailPassword(
    {
      required String email,
      required String password,
      required BuildContext context
    }
  ) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException
    catch (e) {
      if(e.code == 'user-not-found'){
        print('No user found for that email');
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context){
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
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
                        controller: _emailController,
                        validator: (value) {
                          if(value!.isEmpty) {
                            return 'Please enter your email or username';
                          }
                          if (value != _emailController){
                            return 'Wrong email';
                          }
                          if(value.contains('@gmail.com') == true){}
                          else{
                            return "not contain '@gmail.com'";
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
                        controller: _passwordController,
                        validator: (value) {
                          if(value!.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value != _passwordController){
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
                        onPressed: () async {
                          if(_formKey.currentState!.validate()){
                            _formKey.currentState!.save(); }
                          User? user = await loginUsingEmailPassword(email: _emailController.text, password: _passwordController.text, context: context);
                          print(user);
                          if(user != null){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => page9()));
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
                margin: EdgeInsets.only(left: 80),
                child: Row(
                  children: [

                    Text("Don't have an account? " , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold)),

                    Container(
                      margin: EdgeInsets.only(bottom: 2),
                      child: IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/Project (Sign up page)');
                        },
                        icon: Text('Sign Up' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold , decoration: TextDecoration.underline , color: Colors.grey))
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