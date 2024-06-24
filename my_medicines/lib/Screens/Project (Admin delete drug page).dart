import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

var db = FirebaseFirestore.instance;

class medicine {
  String docId;
  String Name;
  String Description;
  double Price;
  List Image;

  medicine(this.docId, this.Name, this.Description, this.Price, this.Image);

  @override
  String toString() {
    return 'medicine(Name: $Name, Price: $Price, Image: $Image)';
  }

  factory medicine.fromMap(String ID, Map<String, dynamic> map) {
    print(map['Name']);
    return medicine(
      ID,
      map['Name'],
      map['Description'],
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
      final QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection(collection).get();
      for (var snapshot in querySnapshot.docs) {
        var documentId = snapshot.id;
        print('Document ID: $documentId');
      }
      final medicines = querySnapshot.docs
          .map((e) => medicine.fromMap(e.id, e.data() as Map<String, dynamic>))
          .toList();
      print(medicines);
      return medicines;
    } catch (e) {
      print('Error fetching medicines: $e');
      return [];
    }
  }
}

class page29 extends StatefulWidget {
  @override
  _page29State createState() => _page29State();
}

class _page29State extends State<page29> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
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
  void didChangeDependencies() {
    getClientStream();
    super.didChangeDependencies();
  }

  _onSearchChanged() {
    print(_searchController.text);
    searchResultList();
  }

  searchResultList() {
    var showResult = [];
    if (_searchController.text != '') {
      for (var clientSnapShot in _allResults) {
        var name = clientSnapShot.Name.toLowerCase();
        if (name.contains(_searchController.text.toLowerCase())) {
          showResult.add(clientSnapShot);
        }
      }
    } else {
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
    var data = await fireStore.getMedicines('Medicines search page');
    setState(() {
      _allResults = data;
    });
    searchResultList();
  }

  late Future<List<medicine>> medicineFuture =
      fireStore.getMedicines('Medicines search page');

  void Refresh() {
    setState(() {
      medicineFuture = fireStore.getMedicines('Medicines search page');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            Stack(children: [
              Opacity(
                opacity: 0.5,
                child: Container(
                  child: Image.asset('assets/Images/Medicine.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 1),
                        blurRadius: 2),
                  ],
                ),
                child: SizedBox(
                  height: 33,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Container(
                          margin: EdgeInsets.only(right: 1.3),
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.black,
                            size: 18,
                          )),
                    ),
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 280,
              child: Text(
                'Enter the medication whose information you want to delete',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Form(
              key: _formKey,
              child: Container(
                width: 330,
                child: TextFormField(
                  controller: _searchController,
                  decoration: InputDecoration(
                      labelText: 'Drug Name', border: OutlineInputBorder()),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 300,
              height: 210,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Container(
                  width: 300,
                  child: FutureBuilder(
                      future: medicineFuture,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return Center(
                              child: Text('Error: ${snapshot.error}'));
                        } else if (!snapshot.hasData ||
                            snapshot.data!.isEmpty) {
                          return Center(child: Text('No medicines found'));
                        } else {
                          return GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1.7 / 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                              ),
                              itemCount: _resultList.length,
                              itemBuilder: (context, index) {
                                final medicine = _resultList[index];
                                return Card(
                                  child: Column(children: [
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                  color: Colors.grey[600]),
                                            ),
                                          ),
                                          Center(
                                              child: IconButton(
                                            onPressed: () {
                                              db
                                                  .collection(
                                                      'Medicines search page')
                                                  .doc(medicine.docId)
                                                  .delete()
                                                  .then(
                                                    (doc) => {
                                                      print("Document deleted"),
                                                      Refresh()
                                                    },
                                                    onError: (e) => print(
                                                        "Error updating document $e"),
                                                  );
                                            },
                                            icon: Icon(Icons.delete),
                                          )),
                                        ],
                                      ),
                                    ),
                                  ]),
                                );
                              });
                        }
                      }),
                ),
              ]),
            ),
          ],
        ),
      ]),
    );
  }
}
