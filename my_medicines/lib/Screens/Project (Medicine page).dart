import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Project (Your cart page).dart';
var db = FirebaseFirestore.instance;

class medicine{
  String Name;
  String Description;
  String Warnings;
  String howShouldITakeIt;
  String sideEffects;
  double Price;
  List Image;

  medicine(this.Name , this.Description , this.Warnings , this.howShouldITakeIt , this.sideEffects , this.Price , this.Image);

  @override
  String toString() {
    return 'Medicine(Name: $Name, Description: $Description , Warnings: $Warnings , How should I take it: $howShouldITakeIt , Side effects: $sideEffects , Price: $Price, Image: $Image)';
  }

  factory medicine.fromMap(Map<String , dynamic> map) {
    print(map['Name']);
    return medicine(
      map['Name'],
      map['Description'],
      map['Warnings'],
      map['How should I take it'],
      map['Side effects'],
      map['Price'],
      List<String>.from(
        map['Image'],
      ),
    );
  }
}

class fireStore {

  static Future<List<medicine>> getMedicines(String collection) async {
    try {
      final QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection(collection).get();
        for(var snapshot in querySnapshot.docs){
          var documentId = snapshot.id;
          print('Document ID: $documentId');
        }
      final medicines = querySnapshot.docs.map((e) => medicine.fromMap(e.data() as Map<String , dynamic>)).toList();
      print(medicines);
      return medicines;
    }
    catch (e) {
      print('Error fetching medicines: $e');
      return[];
    }
  }
}

class page14 extends StatefulWidget {

  String? Name;
  String? Description;
  String? Warnings;
  String? howShouldITakeIt;
  String? sideEffects;
  double? Price;
  List? Image;
  page14({Key? key , this.Name , this.Description , this.Warnings , this.howShouldITakeIt , this.sideEffects , this.Price , this.Image});

  @override
  _page14State createState() => _page14State();

}

class _page14State extends State<page14> {

  late Future<List<medicine>> medicineFuture = fireStore.getMedicines('Medicines search page');

  bool _customTileExpanded1 = false;
  bool _customTileExpanded2 = false;
  bool _customTileExpanded3 = false;
  bool _customTileExpanded4 = false;

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: ListView(
        children: [

          FutureBuilder(
            future: medicineFuture, 
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
                final medicines = snapshot.data!;
                return ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context , index) {
                    final medicine = medicines[index];
                    return GestureDetector(
                      onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> page18(
                          Name: medicine.Name, Price: medicine.Price, Image: medicine.Image,
                        )));
                      },
                      child: Column(
                        children: [
                      
                          Container(
                            child: Stack(
                              children: [
                            
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  height: 240, 
                                  width: 400,
                                  child: Expanded(
                                    child: Image.network(
                                      medicine.Image.isNotEmpty
                                        ? widget.Image![0]
                                        : '',
                                    ),
                                  ),
                                ),
                            
                                Container(
                                  margin: EdgeInsets.only(left: 25 , top: 25.3),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black, 
                                        offset: Offset(0, 0.4),
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
                      
                              ],
                            ),
                          ),
                      
                          SizedBox(height: 20,),
                      
                          Stack(
                            children: [
                      
                              Column(
                                children: [
                      
                                  Container(
                                    margin: EdgeInsets.only(top: 40 , left: 30),
                                      child: Row(
                                        children: [
                                          Text(widget.Name! , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20 , decoration: TextDecoration.underline),),
                                          Container(
                                            margin: EdgeInsets.only(left: 130),
                                            child: Text('JOD ${widget.Price}' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 23),)
                                          ),
                                        ],
                                      ),
                                  ),
                      
                                  SizedBox(height: 10),
                      
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
                                    width: 372,
                                    margin: EdgeInsets.only(left: 8),
                                    child: ExpansionTile(
                                      title: Text('Description' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18 , color: Colors.grey)),
                                      trailing: Icon(
                                        _customTileExpanded1
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_right
                                      ),
                                      children: [
                                        ListTile(
                                          title: Column(
                                            children: [
                                              Text(widget.Description!),
                                            ],
                                          ),
                                        )
                                      ],
                                      onExpansionChanged: (bool expanded) {
                                        setState(() {
                                          _customTileExpanded1 = expanded;
                                        });
                                      },
                                    ),
                                  ),
                      
                                  SizedBox(height: 10),
                      
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
                                    width: 372,
                                    margin: EdgeInsets.only(left: 8),
                                    child: ExpansionTile(
                                      title: Text('Warnings' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18 , color: Colors.grey)),
                                      trailing: Icon(
                                        _customTileExpanded2
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_right
                                      ),
                                      children: [
                                        ListTile(
                                          title: Column(
                                            children: [
                                              Text(widget.Warnings!)
                                            ],
                                          ),
                                        )
                                      ],
                                      onExpansionChanged: (bool expanded) {
                                        setState(() {
                                          _customTileExpanded2 = expanded;
                                        });
                                      },
                                    ),
                                  ),
                      
                                  SizedBox(height: 10),
                      
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
                                    width: 372,
                                    margin: EdgeInsets.only(left: 8),
                                    child: ExpansionTile(
                                      title: Text('How should I take ${widget.Name}?' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18 , color: Colors.grey)),
                                      trailing: Icon(
                                        _customTileExpanded3
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_right
                                      ),
                                      children: [
                                        ListTile(
                                          title: Column(
                                            children: [
                                              Text(widget.howShouldITakeIt!),
                                            ],
                                          ),
                                        )
                                      ],
                                      onExpansionChanged: (bool expanded) {
                                        setState(() {
                                          _customTileExpanded3 = expanded;
                                        });
                                      },
                                    ),
                                  ),
                      
                                  SizedBox(height: 10),
                      
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
                                    width: 372,
                                    margin: EdgeInsets.only(left: 8),
                                    child: ExpansionTile(
                                      title: Text('${widget.Name} side effects' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18 , color: Colors.grey)),
                                      trailing: Icon(
                                        _customTileExpanded4
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_right
                                      ),
                                      children: [
                                        ListTile(
                                          title: Column(
                                            children: [
                                              Text(widget.sideEffects!),
                                            ],
                                          ),
                                        )
                                      ],
                                      onExpansionChanged: (bool expanded) {
                                        setState(() {
                                          _customTileExpanded4 = expanded;
                                        });
                                      },
                                    ),
                                  ),
                      
                                ],
                              ),
                              
                            ]
                          ),
                      
                          SizedBox(height: 25,),
                      
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(23),
                              topLeft: Radius.circular(23),
                            ),
                            child: Container(
                              height: 65,
                              child: BottomAppBar(
                                color: Color.fromRGBO(52, 52, 52, 1),
                                child: Container(
                                  margin: EdgeInsets.only(left: 100),
                                  child: Row(
                                    children: [
                                  
                                      IconButton(
                                        onPressed: (){
                                          db.collection('Cart').add({
                                            'Name': widget.Name,
                                            'Price': widget.Price,
                                            'Image': widget.Image,
                                          }).then((value) => print('Added Data With ID: ${value.id}'));
                                          Navigator.pushNamed(context, '/Project (Your cart page)');
                                        }, 
                                        icon: Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: 3),
                                                child: Icon(Icons.shopping_bag , color: Colors.white , size: 25,)
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 6 , left: 10),
                                                child: Text('Add To Cart' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 18),)
                                              ),
                                            ],
                                          ),
                                        )
                                      ),
                                  
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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