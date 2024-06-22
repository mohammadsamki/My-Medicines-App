import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
var db = FirebaseFirestore.instance;

class order{
  double subTotal;

  order(this.subTotal);

  @override
  String toString() {
    return 'Order{subTotal: $subTotal}';
  }

  factory order.fromMap(Map<String , dynamic> map) {
    print(map['Name']);
    return order(
      map['Subtotal'],
    );
  }
}

class fireStore {

  static Future<List<order>> getOrders(String collection) async {
    try {
      final QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection(collection).get();
        for(var snapshot in querySnapshot.docs){
          var documentId = snapshot.id;
          print('Document ID: $documentId');
        }
      final orders = querySnapshot.docs.map((e) => order.fromMap(e.data() as Map<String , dynamic>)).toList();
      print(orders);
      return orders;
    }
    catch (e) {
      print('Error fetching medicines: $e');
      return[];
    }
  }
}

class page11 extends StatefulWidget {

  @override
  _page11State createState() => _page11State();

}

class _page11State extends State<page11> {

  late Future<List<order>> orderFuture = fireStore.getOrders('Order');

  int _selectedIndex = 0;

  var modeColor = Colors.white;
  var buttonColor = Colors.black;
  var buttonTextColor = Colors.black;

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      initialIndex: 2,
      length: 4,
      child: Scaffold(

        appBar: AppBar(

          backgroundColor: Color.fromARGB(255, 157, 228, 238),

          title: Center(
            child: Text('My Medicines' , style: TextStyle(fontSize: 24 , fontWeight: FontWeight.bold))
          ),

          bottom: TabBar(
            tabs: [
              IconButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/Project (Home page)');
                },
                icon: Icon(Icons.home),
              ),
              IconButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/Project (Search page)');
                },
                icon: Icon(Icons.search),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.shopping_bag_rounded),
              ),
              IconButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/Project (Location page)');
                },
                icon: Icon(Icons.location_on),
              ),
            ],
          ),
          
          actions: [
            Stack(
              children: [

                Container(
                  margin: EdgeInsets.only(right: 13),
                  child: Icon(
                    Icons.notifications_none,
                    size: 30,
                    color: Colors.black,
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 8 , left: 17),
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 3.5,
                  ),
                ),

              ],
            ),
          ],
          
        ),

        drawer: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          child: Drawer(
            child: Container(
              color: modeColor,
              child: ListView(
                      
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: modeColor,
                    ),
                    child: Center(
                      child: Row(
                        children: [

                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('assets/Images/Mohammad.jpg'),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 40 , left: 15),
                            child: Column(
                              children: [
                            
                                Container(
                                  width: 140,
                                  child: Text('Mohammad Obeidat' , style: TextStyle(fontSize: 13 , fontWeight: FontWeight.bold , color: buttonColor),)
                                ),

                                SizedBox(height: 8),
                            
                                Container(
                                  width: 140,
                                child: Text('mohammadahmad23@gmail.com' , style: TextStyle(fontSize: 11 , fontWeight: FontWeight.bold , color: buttonColor))
                                ),
                            
                              ],
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                      
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('My profile' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.grey , fontSize: 20)),
                    selected: _selectedIndex == 2,
                    onTap: () {},
                  ),
                      
                  ListTile(
                    leading: Icon(Icons.settings_outlined),
                    title: Text('Setting' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.grey , fontSize: 20)),
                    selected: _selectedIndex == 2,
                    onTap: () {},
                  ),
                      
                  ListTile(
                    leading: Icon(Icons.email_outlined),
                    title: Text('For inquiries' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.grey , fontSize: 20)),
                    selected: _selectedIndex == 2,
                    onTap: () {
                      Navigator.pushNamed(context, '/Project (For inquirie page)');
                    },
                  ),
                      
                  ListTile(
                    leading: Icon(Icons.error_outline),
                    title: Text('About us' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.grey , fontSize: 20)),
                    selected: _selectedIndex == 2,
                    onTap: () {
                      Navigator.pushNamed(context, '/Project (Info page)');       
                    },
                  ),

                  ListTile(
                    leading: Icon(Icons.card_travel),
                    title: Text('Your cart' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.grey , fontSize: 20)),
                    selected: _selectedIndex == 2,
                    onTap: () {
                      Navigator.pushNamed(context, '/Project (Your cart page)');       
                    },
                  ),

                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Container(
                      height: 40,
                      margin: EdgeInsets.only(top: 40),
                      child: Row(
                        children: [
                    
                          Container(
                            height: 35,
                            margin: EdgeInsets.only(left: 45),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: modeColor
                              ),
                              onPressed: (){
                                setState(() {
                                  if((modeColor == Colors.black)) {
                                    modeColor = Colors.white;
                                    buttonColor = Colors.black;
                                    buttonTextColor = Colors.black;
                                  }
                                });
                              }, 
                              child: Row(
                                children: [
                                  Icon(Icons.light_mode),
                                  Text('Light'),
                                ],
                              ),
                            ),
                          ),
                    
                          SizedBox(width: 10),
                    
                          Container(
                            height: 35,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: modeColor
                              ),
                              onPressed: (){
                                setState(() {
                                  if (modeColor == Colors.white) {
                                    modeColor = Colors.black;
                                    buttonColor = Colors.white;
                                    buttonTextColor = Colors.white;
                                  }
                                });
                              }, 
                              child: Row(
                                children: [
                                  Icon(Icons.dark_mode_outlined),
                                  Text('Dark'),
                                ],
                              ),
                            ),
                          ),
                    
                        ],
                      ),
                    ),
                  ),
                      
                ],
                      
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [

                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text('My Order' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 25),)
                ),

                SizedBox(height: 20,),

                FutureBuilder(
                  future: orderFuture,
                  builder: (context , snapshot){
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }
                    else if(snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    }
                    else if(!snapshot.hasData || snapshot.data!.isEmpty) {
                      return Center(child: Text('No orders found'));
                    }
                    else{
                      final orders = snapshot.data!;
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: orders.length,
                        itemBuilder: (context , index){
                          final order = orders[index];
                          return Container(
                            margin: EdgeInsets.only(left: 20 , top: 20),
                            
                            child: Stack(
                              children: [
                            
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.black)
                                  ),
                                  height: 190,
                                  width: 350,
                                ),
                            
                                Container(
                                  margin: EdgeInsets.only(top: 10 , left: 10),
                                  child:Row(
                                    children: [
                                      Text('Order #483' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
                                      Container(
                                        margin: EdgeInsets.only(left: 140),
                                        child: Text('17/4/2024' , style: TextStyle(color: Colors.grey , fontWeight: FontWeight.bold),),
                                      ),
                                    ],
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(top: 45 , left: 10),
                                  child: Row(
                                    children: [
                                      Text('Tracking number: ' , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold , color: Colors.grey),),
                                      Text('IK287368838' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(top: 80 , left: 10),
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Text('Quantity: ' , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold , color: Colors.grey),),
                                          Text('2' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 100),
                                        child: Row(
                                          children: [
                                            Text('Subtotal: ' , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold , color: Colors.grey),),
                                            Text('JOD ${order.subTotal}' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(left: 130 , top: 140),
                                  child: IconButton(
                                    onPressed: (){
                                      Navigator.pushNamed(context, '/Project (Details order page)');
                                    }, 
                                    icon: Container(
                                      alignment: Alignment.center,
                                      width: 80,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.black)
                                      ),
                                      child: Text('Details' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
                                    )
                                  ),
                                ),
                                
                              ]
                            ),
                          );
                        }
                      );
                    }
                  }
                ),

              ],
            )
          ],
        ),
      )
    );
  }
}