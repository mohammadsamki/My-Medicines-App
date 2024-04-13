import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(inquiri());
}

class inquiri extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : page12()
    );
  }

}

class page12 extends StatefulWidget {

  @override
  _page12State createState() => _page12State();

}

class _page12State extends State<page12> {

  final  _formKey = GlobalKey<FormState>();

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

              SizedBox(height: 80),

              Container(
                width: 300,
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter something";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter your inquiry',
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(33)),
                      borderSide: BorderSide(),
                    ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 80),

              Container(
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 158, 193, 223)
                  ),
                  onPressed: (){
                    if (_formKey.currentState!.validate()){
                      _formKey.currentState!.save();
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => CupertinoAlertDialog(
                          title: Text('Inquiry'),
                          content: Text('Your inquiry has been posted'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Ok'),
                              child: Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }
                  }, 
                  child: Text('Send' , style: TextStyle(fontSize: 18 , color: Colors.black))
                ),
              ),

            ],
          )
        ],
      ),
    );
  }

}