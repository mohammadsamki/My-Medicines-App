import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
var db = FirebaseFirestore.instance;

class medicine{
  String docId;
  String Name;
  String Description;
  String Warnings;
  String howShouldITakeIt;
  String sideEffects;
  double Price;
  List Image;

  medicine(this.docId , this.Name , this.Description , this.Warnings , this.howShouldITakeIt , this.sideEffects , this.Price , this.Image);

  @override
  String toString() {
    return 'Medicine(Name: $Name, Description: $Description , Warnings: $Warnings , How should I take it: $howShouldITakeIt , Side effects: $sideEffects , Price: $Price, Image: $Image)';
  }

  factory medicine.fromMap(String ID , Map<String , dynamic> map) {
    print(map['Name']);
    return medicine(
      ID,
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
      final medicines = querySnapshot.docs.map((e) => medicine.fromMap(e.id , e.data() as Map<String , dynamic>)).toList();
      print(medicines);
      return medicines;
    }
    catch (e) {
      print('Error fetching medicines: $e');
      return[];
    }
  }
}

class page28 extends StatefulWidget {

  @override
  _page28State createState() => _page28State();

}

class _page28State extends State<page28> {

  final _formKey = GlobalKey<FormState>();

  @override
  void initState(){
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies(){
    getClientStream();
    super.didChangeDependencies();
  }

  _onSearchChanged(){
    print(_searchController.text);
    searchResultList();
  }

  searchResultList(){
    var showResult = [];
    if(_searchController.text != ''){
      for (var medicine in _allResults){
        var name = medicine.Name.toLowerCase();
        if(name.contains(_searchController.text.toLowerCase())){
          showResult.add(medicine);
        }
      }
    }
    else{
      showResult = List.from(_allResults);
    }

    setState(() {
      _resultList = showResult;
    });

  }

  List<medicine> _allResults = [];
  List<dynamic> _resultList = [];
  final TextEditingController _searchController = TextEditingController();

  getClientStream() async {
    var data = await fireStore.getMedicines('Medicines');
    setState(() {
      _allResults = data;
    });
    searchResultList();
  }

  late Future<List<medicine>> medicineFuture = fireStore.getMedicines('Medicines');

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
        
              SizedBox(height: 40,),
        
              Container(
                width: 280,
                child: Text('Enter the medication whose information you want to update' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold) , textAlign: TextAlign.center,),
              ),
        
              SizedBox(height: 30,),
        
              Form(
                key: _formKey,
                child: Container(
                  width: 330,
                  child: TextFormField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      labelText: 'Drug Name',
                      border: OutlineInputBorder()
                    ),
                  ),
                ),
              ),

              SizedBox(height: 40,),

              Container(
                width: 300,
                height: 210,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 300,
                      child: FutureBuilder(
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
                            return GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1.7 / 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                              ), 
                              itemCount: _resultList.length,
                              itemBuilder: (context , index) {
                                final medicine = _resultList[index];
                                return Card(
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Image.network(
                                          medicine.Image.isNotEmpty
                                            ? medicine.Image[0]
                                            : '',
                                          fit: BoxFit.cover,
                                          width: double.infinity,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Center(
                                              child: Text(
                                                medicine.Name,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Center(
                                              child: Text(
                                                '\$${medicine.Price}',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey[600]
                                                ),
                                              ),
                                            ),
                                            Center(
                                              child: IconButton(
                                                onPressed: (){
                                                  showDialog(context: context, 
                                                    builder: (BuildContext context) => 
                                                       AlertDialog(
                                                          title: Text('Are you sure update?'),
                                                          content: SingleChildScrollView(
                                                            child: Form(
                                                              key: _formKey,
                                                              child: Column(
                                                                children: [
                                                                  TextFormField(
                                                                    initialValue: medicine.Name,
                                                                    decoration: InputDecoration(
                                                                      hintText: 'Medicine Name',
                                                                    ),
                                                                    onChanged: (newValue) {
                                                                      medicine.Name = newValue;
                                                                    },
                                                                  ),
                                                                  TextFormField(
                                                                    initialValue: medicine.Description,
                                                                    decoration: InputDecoration(
                                                                      hintText: 'Medicine Description',
                                                                    ),
                                                                    onChanged: (newValue) {
                                                                      medicine.Description = newValue;
                                                                    }
                                                                  ),
                                                                  TextFormField(
                                                                    initialValue: medicine.Warnings,
                                                                    decoration: InputDecoration(
                                                                      hintText: 'Medicine Warnings',
                                                                    ),
                                                                    onChanged: (newValue) {
                                                                      medicine.Warnings = newValue;
                                                                    }
                                                                  ),
                                                                  TextFormField(
                                                                    initialValue: medicine.howShouldITakeIt,
                                                                    decoration: InputDecoration(
                                                                      hintText: 'How Should I Take It',
                                                                    ),
                                                                    onChanged: (newValue) {
                                                                      medicine.howShouldITakeIt = newValue;
                                                                    }
                                                                  ),
                                                                  TextFormField(
                                                                    initialValue: medicine.sideEffects,
                                                                    decoration: InputDecoration(
                                                                      hintText: 'Medicine side effects',
                                                                    ),
                                                                    onChanged: (newValue) {
                                                                      medicine.sideEffects = newValue;
                                                                    }
                                                                  ),
                                                                  TextFormField(
                                                                    initialValue: medicine.Price.toString(),
                                                                    decoration: InputDecoration(
                                                                      hintText: 'Medicine Price',
                                                                    ),
                                                                    onChanged: (newValue) {
                                                                      medicine.Price = double.parse(newValue);
                                                                    },                                               
                                                                  ),
                                                                  TextFormField(
                                                                    initialValue: medicine.Image.toString(),
                                                                    decoration: InputDecoration(
                                                                      hintText: 'Medicine Image',
                                                                    ),
                                                                    onChanged: (newValue) {
                                                                      medicine.Image = [newValue];
                                                                    }
                                                                  ),
                                                                ],
                                                              )
                                                            ),
                                                          ),
                                                          actions: [
                                                            Row(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                ElevatedButton(
                                                                  onPressed: (){
                                                                    Navigator.pop(context);
                                                                  }, 
                                                                  child: Text('Cancel')
                                                                ),
                                                                SizedBox(width: 16,),
                                                                ElevatedButton(
                                                                  onPressed: (){
                                                                    if(_formKey.currentState!.validate()){
                                                                      _formKey.currentState!.save();
                                                                      final update = db.collection('Medicines').doc(medicine.docId);
                                                                      update.update({'Name': medicine.Name , 'Description': medicine.Description , 'Warnings': medicine.Warnings , 'How should i take it': medicine.howShouldITakeIt , 'Side effects': medicine.sideEffects , 'Price': medicine.Price , 'Image': medicine.Image}).then(
                                                                        (value) => print("Document Snapshot successfully updated!"),
                                                                        onError: (e) => print("Error updating document $e"));
                                                                    }
                                                                  },
                                                                  child: Text('Update medicine')
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      
                                                    
                                                    );
                                                }, 
                                                icon: Icon(Icons.edit),
                                              )
                                            ),
                                          ],
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
                    ),
                  ]
                ),
              ),
            ],
          ),
        ]
      ),     
    );
  }
}