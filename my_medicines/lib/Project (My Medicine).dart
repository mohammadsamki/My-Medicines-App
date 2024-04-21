import 'package:flutter/material.dart';
import 'Screens/Project (Info page).dart';
import 'Screens/Project (Registration page).dart';
import 'Screens/Project (Log in user page).dart';
import 'Screens/Project (Sign up page).dart';
import 'Screens/Project (Forgot password page).dart';
import 'Screens/Project (Verification code page).dart';
import 'Screens/Project (Create new password page).dart';
import 'Screens/Project (Home page).dart';
import 'Screens/Project (Search page).dart';
import 'Screens/Project (Order page1).dart';
import 'Screens/Project (For inquirie page).dart';
import 'Screens/Project (Location page).dart';
import 'Screens/Project (Amoxicillin page).dart';
import 'Screens/Project (Doxycycline page).dart';
import 'Screens/Project (Cephalexin page).dart';
import 'Screens/Project (Ciprofloxacin page).dart';
import 'Screens/Project (Your cart page).dart';
import 'Screens/Project (Admin or User page).dart';
import 'Screens/Project (Log in admin page).dart';
import 'Screens/Project (Admin add drug page).dart';
import 'Screens/Project (Check out page1).dart';
import 'Screens/Project (Check out page2).dart';
import 'Screens/Project (Check out page3).dart';
import 'Screens/Project (Order page2).dart';
import 'Screens/Project (Order page3).dart';
import 'Screens/Project (Admin add or update or delete page).dart';
import 'Screens/Project (Admin update drug page1).dart';
import 'Screens/Project (Admin update drug page2).dart';
import 'Screens/Project (Admin delete drug page).dart';
import 'Screens/Project (Update drug name page).dart';
import 'Screens/Project (Update drug price page).dart';
import 'Screens/Project (Update drug note page).dart';
import 'Screens/Project (Update drug image page).dart';
import 'Screens/Project (Update drug rating page).dart';

void main(){
  runApp(Medicine());
}

class Medicine extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/Project (Info page)': (context) => page2(),
        '/Project (Registration page)': (context) => page3(),
        '/Project (Log in user page)': (context) => page4(),
        '/Project (Sign up page)': (context) => page5(),
        '/Project (Forgot password page)': (context) => page6(),
        '/Project (Verification code page)': (context) => page7(),
        '/Project (Create new password page)': (context) => page8(),
        '/Project (Home page)': (context) => page9(),
        '/Project (Search page)': (context) => page10(),
        '/Project (Order page1)': (context) => page11(),
        '/Project (For inquirie page)': (context) => page12(),
        '/Project (Location page)': (context) => page13(),
        '/Project (Amoxicillin page)': (context) => page14(),
        '/Project (Doxycycline page)': (context) => page15(),
        '/Project (Cephalexin page)': (context) => page16(),
        '/Project (Ciprofloxacin page)': (context) => page17(),
        '/Project (Your cart page)': (context) => page18(),
        '/Project (Admin or User page)': (context) => page19(),
        '/Project (Log in admin page)': (context) => page20(),
        '/Project (Admin add drug page)': (context) => page21(),
        '/Project (Check out page1)': (context) => page22(),
        '/Project (Check out page2)': (context) => page23(),
        '/Project (Check out page3)': (context) => page24(),
        '/Project (Order page2)': (context) => page25(),
        '/Project (Order page3)': (context) => page26(),
        '/Project (Admin add or update or delete page)':(context) => page27(),
        '/Project (Admin update drug page1)': (context) => page28(),
        '/Project (Admin delete drug page)': (context) => page29(),
        '/Project (Admin update drug page2)': (context) => page30(),
        '/Project (Update drug name page)':(context) => page31(),
        '/Project (Update drug price page)':(context) => page32(),
        '/Project (Update drug note page)':(context) => page33(),
        '/Project (Update drug image page)':(context) => page34(),
        '/Project (Update drug rating page)': (context) => page35(),
      },
      home: page1(),
    );
  }

}

class page1 extends StatefulWidget {

  @override
  _page1State createState() =>  _page1State();

}

class _page1State extends State<page1> {

  @override
  Widget build(BuildContext context){
    return Scaffold(

      body: Container(
        color: Color.fromRGBO(166, 232, 253, 100),
        child: ListView(
          children: [
            Column(
              children: [

                Container(
                  alignment: Alignment.topCenter,
                  child: IconButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/Project (Info page)');
                    }, 
                    icon: Icon(Icons.info_outline , size: 30,)
                  ),
                ),
                
                Container(
                  height:270,
                  child: Image.asset('assets/Images/My Medicine.jpeg'),
                ),

                SizedBox(height: 60),

                Container(
                  child: Column(
                    children: [
                      Text('Welcome to the' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 30),),
                      Text('My Medicines' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 25 , color: Colors.blue[800])),
                      Text('application' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20)),
                    ],
                  ),
                ),

                SizedBox(height: 60,),

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(128, 225, 252, 1)
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/Project (Home page)');
                    }, 
                    child: Text('Get Started' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold , color: Colors.black),),
                  ),
                ),

              ]
            ),
        
          ],
        ),
      ),
    );
    
  }
}