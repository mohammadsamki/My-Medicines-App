import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
var db = FirebaseFirestore.instance;

class check{
  String firstName;
  String lastName;
  String address;
  int phoneNumber;

  check(this.firstName , this.lastName , this.address , this.phoneNumber);

  @override
  String toString() {
    return 'Check (First name: $firstName, Last name: $lastName, Address: $address , Phone number: $phoneNumber)';
  }

  factory check.fromMap(Map<String , dynamic> map) {
    print(map['Name']);
    return check(
      map['First name'],
      map['Last name'],
      map['Address'],
      map['Phone number'],
    );
  }
}

class fireStore {

  static Future<List<check>> getCheckOut(String collection) async {
    try {
      final QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection(collection).get();
        for(var snapshot in querySnapshot.docs){
          var documentId = snapshot.id;
          print('Document ID: $documentId');
        }
      final checkOut = querySnapshot.docs.map((e) => check.fromMap(e.data() as Map<String , dynamic>)).toList();
      print(checkOut);
      return checkOut;
    }
    catch (e) {
      print('Error fetching medicines: $e');
      return[];
    }
  }

}

class page23 extends StatefulWidget {

  String? address;
  page23({Key? key , this.address}) : super(key: key);

  @override
  _page23State createState() => _page23State();

}

class _page23State extends State<page23> {

  late Future<List<check>> checkFuture = fireStore.getCheckOut('Check out');

  final  _formKey = GlobalKey<FormState>();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

          FutureBuilder(
            future: checkFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              else if(snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              }
              else if(!snapshot.hasData || snapshot.data!.isEmpty) {
                return Center(child: Text('No check out found'));
              }
              else{
                final checks = snapshot.data!;
                return ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    final check = checks[index];
                    return Column(
                      children: [

                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 35 , top: 35),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black, 
                                    offset: Offset(0, 0.3)
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
                            Container(
                              margin: EdgeInsets.only(top: 35 , left: 90),
                              child: Text('Check out' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                            ),
                          ],
                        ),

                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [

                              Container(
                                margin: EdgeInsets.only(left: 40 , top: 20),
                                child: IconButton(
                                  onPressed: (){}, 
                                  icon: Icon(Icons.location_on , color: Colors.black , size: 30,)
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: Row(
                                  children: [
                                    Text('.' , style: TextStyle(color: Color.fromRGBO(200, 199, 204, 1) , fontSize: 45),),
                                    SizedBox(width: 2,),
                                    Text('.' , style: TextStyle(color: Color.fromRGBO(200, 199, 204, 1) , fontSize: 45),),
                                    SizedBox(width: 2,),
                                    Text('.' , style: TextStyle(color: Color.fromRGBO(200, 199, 204, 1) , fontSize: 45),),
                                    SizedBox(width: 2,),
                                    Text('.' , style: TextStyle(color: Color.fromRGBO(200, 199, 204, 1) , fontSize: 45),),
                                    SizedBox(width: 2,),
                                    Text('.' , style: TextStyle(color: Color.fromRGBO(200, 199, 204, 1) , fontSize: 45),),
                                  ],
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(left: 5 , top: 20),
                                child: IconButton(
                                  onPressed: (){}, 
                                  icon: Icon(Icons.credit_card_outlined , size: 30 , color: Colors.black,)
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: Row(
                                  children: [
                                    Text('.' , style: TextStyle(color: Color.fromRGBO(200, 199, 204, 1) , fontSize: 45),),
                                    SizedBox(width: 2,),
                                    Text('.' , style: TextStyle(color: Color.fromRGBO(200, 199, 204, 1) , fontSize: 45),),
                                    SizedBox(width: 2,),
                                    Text('.' , style: TextStyle(color: Color.fromRGBO(200, 199, 204, 1) , fontSize: 45),),
                                    SizedBox(width: 2,),
                                    Text('.' , style: TextStyle(color: Color.fromRGBO(200, 199, 204, 1) , fontSize: 45),),
                                    SizedBox(width: 2,),
                                    Text('.' , style: TextStyle(color: Color.fromRGBO(200, 199, 204, 1) , fontSize: 45),),
                                  ],
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(left: 5 , top: 20),
                                child: IconButton(
                                  onPressed: (){}, 
                                  icon: Icon(Icons.check_circle , size: 28 , color: const Color.fromRGBO(200, 199, 204, 1),)
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(height: 10,),

                        Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                child: Text('STEP 2' , style: TextStyle(color: Color.fromRGBO(29, 31, 34, 1)),),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 40),
                                child: Text('Payment' , style: TextStyle(color: Color.fromRGBO(29, 31, 34, 1) , fontSize: 25 , fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 20,),

                        Container(
                          width: 340,
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter number cart';
                                    }
                                    // if (value.length == 16){}
                                    // else{
                                    //   return 'Please enter 16 digit number';
                                    // }
                                    return null;
                                  },
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    labelText: 'Card',
                                  )
                                ),
                              ],
                            )
                          ),
                        ),

                        SizedBox(height: 20,),

                        Container(
                          height: 50,
                          width: 300,
                          margin: EdgeInsets.only(top: 30),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(52, 52, 52, 1)
                            ),
                            onPressed: (){
                              if(_formKey.currentState!.validate()){
                                _formKey.currentState!.save();

                                db.collection('Details order').add({
                                  'Address': check.address,
                                }).then((value) => print('Added Data With ID: ${value.id}'));
                              
                              Navigator.pushNamed(context, '/Project (Check out page3)');
                              }
                            }, 
                            child: Text('Place my order' , style: TextStyle(color: Colors.white , fontSize: 18),),
                          ),
                        ),

                        SizedBox(height: 20,),

                      ]
                    );
                  }
                );
              }
            }
          ),

        ],
      ),
    );
  }
}