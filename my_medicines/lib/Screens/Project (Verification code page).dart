import 'package:flutter/material.dart';
import 'package:flutter_verification_code_field/flutter_verification_code_field.dart';

void main(){
  runApp(verification());
}

class verification extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : page7()
    );
  }

}

class page7 extends StatefulWidget {

  @override
  _page7State createState() => _page7State();

}

class _page7State extends State<page7> {

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
                margin: EdgeInsets.only(right: 93),
                child: Text('Verification code' , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold)),
              ),

              SizedBox(height: 20),
              
              Container(
                margin: EdgeInsets.only(left: 40 , right: 50),
                child: Text('Please enter the verification code we sent '
                            'to your email address' , style: TextStyle(fontSize: 17 , color: Colors.grey),
                ),
              ),

              SizedBox(height: 40),

              VerificationCodeField(
                length: 5,
                onFilled: (value) => print(value),
                size: Size(40 , 60),
                spaceBetween: 16,
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
                    Navigator.pushNamed(context, '/Project (Create new password page)');
                  },
                      
                  child: Text('Next' , style: TextStyle(color: Colors.white , fontSize: 20)),
                ),
              ),
            
            ],
          )
        ],
      ),
    );

  }
}