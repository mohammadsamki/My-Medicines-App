import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
var db = FirebaseFirestore.instance;

class Cart{
  String docId;
  String Name;
  double Price;
  List Image;

  Cart(this.docId , this.Name , this.Price , this.Image);

  @override
  String toString() {
    return 'Cart(Name: $Name, Price: $Price, Image: $Image)';
  }

  factory Cart.fromMap(String ID , Map<String , dynamic> map) {
    print(map['Name']);
    return Cart(
      ID,
      map['Name'],
      map['Price'],
      List<String>.from(
        map['Image'],
      ),
    );
  }
}

class fireStore {

  static Future<List<Cart>> getCart(String collection) async {
    try {
      final QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection(collection).get();
        for(var snapshot in querySnapshot.docs){
          var documentId = snapshot.id;
          print('Document ID: $documentId');
        }
      final cart = querySnapshot.docs.map((e) => Cart.fromMap(e.id , e.data() as Map<String , dynamic>)).toList();
      print(cart);
      return cart;
    }
    catch (e) {
      print('Error fetching cart: $e');
      return[];
    }
  }
}

class page18 extends StatefulWidget {

  String? Name;
  double? Price;
  List? Image;
  page18({Key? key , this.Name , this.Price , this.Image});

  @override
  _page18State createState() => _page18State();

}

class _page18State extends State<page18> {

  late Future<List<Cart>> cartFuture = fireStore.getCart('Cart');

  List counter1 = [1 , 1];
  double totalPalance = 0;

  void Refresh(){
    setState(() {
      cartFuture = fireStore.getCart('Cart');
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Column(
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
                            Navigator.pushNamed(context, '/Project (Home page)');
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
                    child: Text('Your Cart' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                  ),
                ],
              ),

              FutureBuilder(
                future: cartFuture,
                builder: (context , snapshot){
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  else if(snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }
                  else if(!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(child: Text('No medicines found'));
                  }
                  else {
                    final cart = snapshot.data!;
                    return ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: cart.length,
                      itemBuilder: (context , index){
                        final Cart = cart[index];
    
                        totalPalance += (Cart.Price * counter1[index]);

                        return Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(22)),
                                color: Color.fromARGB(255, 229, 248, 248),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color.fromRGBO(0, 0, 0, 0.253),
                                    offset: Offset(0, 5),
                                  )
                                ]
                              ),
                              margin: EdgeInsets.only(top: 35),
                              child: Container(
                                height: 110,
                                width: 350,
                                child: Stack(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 292),
                                      child: IconButton(
                                        onPressed: (){
                                          db.collection('Cart').doc(Cart.docId).delete().then(
                                            (doc) => {print("Document deleted") , Refresh()},
                                            onError: (e) => print("Error updating document $e"),
                                          );
                                        }, 
                                        icon: Icon(Icons.cancel , color: Colors.grey , size: 24,)
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(22),
                                            bottomLeft: Radius.circular(22)
                                          ),
                                          child: Container(
                                            height: 110,
                                            child: Stack(
                                              children: [
                                                Container(
                                                  height: 200,
                                                  color: Colors.white,
                                                  child: Image.network(
                                                    Cart.Image.isNotEmpty
                                                      ? Cart.Image[0]
                                                      : '',
                                                    fit: BoxFit.cover,
                                                    width: 100,
                                                  )
                                                )
                                              ]
                                            )
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 15),
                                          child: Column(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(right: 3),
                                                child: Text('${Cart.Name}' , style: TextStyle(fontWeight: FontWeight.bold),),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(left: 10 , top: 7),
                                                child: Text('JOD ${Cart.Price}' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 60 , left: 70),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(20)),
                                            border: Border.all(color: Colors.black)
                                          ),
                                          child: Container(
                                            height: 30,
                                            width: 80,
                                            child: Row(
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(left: 1.5),
                                                  width: 33,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      setState(() {
                                                        if(counter1[index] >= 1){
                                                          counter1[index] -= 1;
                                                        }
                                                      });
                                                    }, 
                                                    icon: Icon(Icons.remove , color: Colors.black , size: 16,)
                                                  ),
                                                ),
                                                Container(
                                                  child: Text('${counter1[index]}' , style: TextStyle(color: Colors.black , fontSize: 16),)
                                                ),
                                                Container(
                                                  width: 33,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      setState(() {
                                                        counter1[index] += 1;
                                                      });
                                                    }, 
                                                    icon: Container(
                                                      margin: EdgeInsets.only(right: 20),
                                                      child: Icon(Icons.add , color: Colors.black , size: 16,)
                                                    )
                                                  ),
                                                ),
                                              ]
                                            ),
                                          ),
                                        ),
                                        
                                      ],
                                    ),
                                  ]
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                    );
                  }
                }
              ),
              Container(
                margin: EdgeInsets.only(top : 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color.fromRGBO(0, 0, 0, 0.05),
                      offset: Offset(0, -3),
                    )
                  ]
                ),
                child: Container(
                  height: 280,
                  child: Column(
                    children: [

                      Container(
                        alignment: Alignment.topRight,
                        child: Row(
                          children: [
                      
                            Container(
                              margin: EdgeInsets.only(top: 30 , left: 30),
                              child: Text('Product price' , style: TextStyle(color: Colors.grey , fontSize: 16),)
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 30 , left: 148),
                              child: Text('JOD ${totalPalance}' , style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 0),
                        width: 340,
                        child: Divider(
                          thickness: 0.5,
                          height: 40,
                          color: Color.fromARGB(255, 221, 219, 219),
                        ),
                      ),


                      Container(
                        alignment: Alignment.topRight,
                        child: Row(
                          children: [
                      
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Text('Shipping' , style: TextStyle(color: Colors.grey , fontSize: 16),)
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 185),
                              child: Text('Freeship' , style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 0),
                        width: 340,
                        child: Divider(
                          thickness: 0.5,
                          height: 40,
                          color: Color.fromARGB(255, 221, 219, 219),
                        ),
                      ),

                      Container(
                        alignment: Alignment.topRight,
                        child: Row(
                          children: [
                      
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Text('Subtotal' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),)
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 170),
                              child: Text('JOD ${totalPalance}' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
                            ),
                            
                          ],
                        ),
                      ),

                      Container(
                        height: 50,
                        width: 300,
                        margin: EdgeInsets.only(top: 30),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(52, 52, 52, 1)
                          ),
                          onPressed: (){
                            Navigator.pushNamed(context, '/Project (Check out page1)');
                          }, 
                          child: Text('Proceed to checkout' , style: TextStyle(color: Colors.white , fontSize: 18),),
                        ),
                      ),

                    ],
                  ),
                ),
              )

            ],
          )
        ],
      ),
    );
  }
}