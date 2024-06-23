import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Project (Medicine page).dart';
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

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<medicine> _allResults = [];
  List<dynamic> _resultList = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
    _fetchMedicines(); // Fetch medicines on initialization
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  _onSearchChanged() {
    searchResultList(); // Update search results when the text changes
  }

  _fetchMedicines() async {
    var medicines = await fireStore.getMedicines('Medicines search page');
    setState(() {
      _allResults = medicines;
    });
    searchResultList(); // Initialize the search results with all medicines
  }
  int _selectedIndex = 0;

  searchResultList() {
    var showResults = [];
    if (_searchController.text != '') {
      for (var medicine in _allResults) {
        var name = medicine.Name.toLowerCase();
        if (name.contains(_searchController.text.toLowerCase())) {
          showResults.add(medicine);
        }
      }
    } else {
      showResults = List.from(_allResults);
    }

    setState(() {
      _resultList = showResults; // Update the result list with the search results
    });
  }

  var modeColor = Colors.white;
  var buttonColor = Colors.black;
  var buttonTextColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 157, 228, 238),
          title: CupertinoSearchTextField(
            backgroundColor: Colors.white,
            controller: _searchController,
          ),
          bottom: TabBar(
            tabs: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Project (Home page)');
                },
                icon: Icon(Icons.home),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Project (Order page)');
                },
                icon: Icon(Icons.shopping_bag_rounded),
              ),
              IconButton(
                onPressed: () {
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
                  margin: EdgeInsets.only(top: 8, left: 17),
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
              color: Colors.white,
              child: ListView(
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage('assets/Images/Mohammad.jpg'),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 40, left: 15),
                            child: Column(
                              children: [
                                Container(
                                  width: 140,
                                  child: Text(
                                    'Mohammad Obeidat',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Container(
                                  width: 140,
                                  child: Text(
                                    'mohammadahmad23@gmail.com',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
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
                    title: Text('My profile',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 20)),
                    selected: _selectedIndex == 2,
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.settings_outlined),
                    title: Text('Setting',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 20)),
                    selected: _selectedIndex == 2,
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.email_outlined),
                    title: Text('For inquirie',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 20)),
                    selected: _selectedIndex == 2,
                    onTap: () {
                      Navigator.pushNamed(
                          context, '/Project (For inquirie page)');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.error_outline),
                    title: Text('About us',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 20)),
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
                                  backgroundColor: Colors.white),
                              onPressed: () {
                                setState(() {
                                  modeColor = Colors.white;
                                  buttonColor = Colors.black;
                                  buttonTextColor = Colors.black;
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
                                  backgroundColor: Colors.white),
                              onPressed: () {
                                setState(() {
                                  modeColor = Colors.black;
                                  buttonColor = Colors.white;
                                  buttonTextColor = Colors.white;
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
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.7 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: _resultList.length,
          itemBuilder: (context, index) {
            final medicine = _resultList[index];
            return Card(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context)=> page14(
                        Name: medicine.Name, Description: medicine.Description,Warnings: medicine.Warnings, howShouldITakeIt: medicine.howShouldITakeIt, sideEffects: medicine.sideEffects, Price: medicine.Price, Image: medicine.Image,
                      )
                    )
                  );
                },
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
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}