import 'package:flutter/material.dart';

class page27 extends StatefulWidget {

  @override
  _page27State createState() => _page27State();

}

class _page27State extends State<page27> {

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
                            Navigator.pushNamed(context, '/Project (Admin or User page)');
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

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 70, 67, 67),
                      offset: Offset(0, 3),
                    )
                  ]
                ),
                width: 200,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(133, 216, 219, 1)
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, '/Project (Admin add drug page)');
                  }, 
                  child: Text('Add Drug' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold , color: Colors.white),),
                ),
              ),

              SizedBox(height: 20,),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 70, 67, 67),
                      offset: Offset(0, 3),
                    )
                  ]
                ),
                width: 200,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(133, 216, 219, 1)
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, '/Project (Admin update drug page1)');
                  }, 
                  child: Text('Update Drug' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold , color: Colors.white),),
                ),
              ),

              SizedBox(height: 20,),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 70, 67, 67),
                      offset: Offset(0, 3),
                    )
                  ]
                ),
                width: 200,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(133, 216, 219, 1)
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, '/Project (Admin delete drug page)');
                  }, 
                  child: Text('Delete Drug' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold , color: Colors.white),),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}