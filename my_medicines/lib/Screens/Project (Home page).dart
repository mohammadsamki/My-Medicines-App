import 'package:flutter/material.dart';

void main(){
  runApp(home());
}

class home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: page9(),
    );
  }

}

class page9 extends StatefulWidget {

  @override
  _page9State createState() => _page9State();

}

class _page9State extends State<page9> {

  int _selectedIndex = 0;

  var modeColor = Colors.white;
  var buttonColor = Colors.black;
  var buttonTextColor = Colors.black;

  void _onItemTapped(int index) {

    setState(() {
      _selectedIndex = index;
    });

  }

  bool _customTileExpanded1 = false;
  bool _customTileExpanded2 = false;
  bool _customTileExpanded3 = false;
  bool _customTileExpanded4 = false;
  bool _customTileExpanded5 = false;
  bool _customTileExpanded6 = false;
  bool _customTileExpanded7 = false;

  final List images = [
    'assets/Images/صيدلية الرازي.png',
    'assets/Images/صيدلية الاسرة.png',
    'assets/Images/صيدلية الدواء.png',
  ];

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      initialIndex: 0,
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
                onPressed: (){},
                icon: Icon(Icons.home),
              ),
              IconButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/Project (Search page)');
                },
                icon: Icon(Icons.search),
              ),
              IconButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/Project (Order page1)');
                },
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

        body: Container(
          color: Color.fromARGB(123, 211, 239, 240),
          child: ListView(
            children: [
              Column(
                children: [

                  Container(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/Project (Registration page)');
                      }, 
                      icon: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 1),
                              blurRadius: 1
                            )
                          ]
                        ),
                        height: 30,
                        width: 160,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(209, 232, 235, 1)
                          ),
                          onPressed: (){
                            Navigator.pushNamed(context, '/Project (Registration page)');
                          },
                          child: Text('Log in Or Sign up' , style: TextStyle(fontWeight: FontWeight.bold),)
                        ),
                      )
                    ),
                  ),
          
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text('Some Pharmacies' , style: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold),),
                  ),
          
                  Container(
                    margin: EdgeInsets.only(top: 10 , left: 30),
                    width: 330,
                    height: 210,
                    child: PageView.builder(
                      itemCount: images.length,
                      itemBuilder: (context , _selectedIndex) {
                        return Stack(
                          children: [
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Container(
                                    color: Color.fromARGB(255, 235, 232, 232),
                                    child: Container(
                                      width: 300,
                                      child: Image.asset(
                                        images[_selectedIndex] , fit: BoxFit.cover , 
                                        height: 180,
                                        width: 360,
                                      ),
                                    ),
                                  ),
                                ),
                                
                              ],
                            ),

                            Container(
                              margin: EdgeInsets.only(top: 190, left: 125),
                              child: Row(
                                children: [
                                    
                                  CircleAvatar(
                                    radius: 6,
                                    backgroundColor: Colors.black,
                                    child: CircleAvatar(
                                      radius: 5,                          
                                      backgroundColor: 0 == _selectedIndex
                                      ? Colors.red
                                      : Color.fromARGB(255, 77, 76, 76)
                                    ),
                                  ),
                                    
                                  SizedBox(width: 8),
                                    
                                  CircleAvatar(
                                    radius: 6,
                                    backgroundColor: Colors.black,
                                    child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor: 1 == _selectedIndex
                                      ? Colors.red
                                      : Color.fromARGB(255, 77, 76, 76)
                                    ),
                                  ),
                                    
                                  SizedBox(width: 8),
                                    
                                  CircleAvatar(
                                    radius: 6,
                                    backgroundColor: Colors.black,
                                    child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor: 2 == _selectedIndex
                                      ? Colors.red
                                      : Color.fromARGB(255, 77, 76, 76)
                                    ),
                                  ),
                                    
                                ],
                              ),
                            ),

                          ]
                        );
                      }
                    )
                  ),

                  SizedBox(height: 30),

                  Container(
                    child: Text('Some Antibiotics' , style: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold),),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 25 , right: 25),
                    width: 400,
                    height: 210,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                              
                        Container(
                          width: 133,
                          child: Column(
                            children: [
                              Container(
                                child: IconButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, '/Project (Amoxicillin page)');
                                  },
                                  icon: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset('assets/Images/Amoxicillin.jpeg' , height: 120))
                                ),
                              ),
                              SizedBox(height: 8),
                              Text('Amoxicillin' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15)),
                              Text('JOD 11.78' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20)),
                            ],
                          ),
                        ),
                              
                        Container(
                          width: 133,
                          child: Column(
                            children: [
                              Container(
                                child: IconButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, '/Project (Doxycycline page)');
                                  },
                                  icon: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset('assets/Images/Doxycycline.jpg' , height: 120)
                                  )
                                ),
                              ),
                              SizedBox(height: 8),
                              Text('Doxycycline' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15)),
                              Text('JOD 12.80' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20)),
                            ],
                          ),
                        ),
                              
                        Container(
                          width: 133,
                          child: Column(
                            children: [
                              Container(
                                child: IconButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, '/Project (Cephalexin page)');
                                  },
                                  icon: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset('assets/Images/Cephalexin.jpg' , height: 120)
                                  )
                                ),
                              ),
                              SizedBox(height: 8),
                              Text('Cephalexin' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15)),
                              Text('JOD 12.76' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20)),
                            ],
                          ),
                        ),
                              
                        Container(
                          width: 133,
                          child: Column(
                            children: [
                              Container(
                                child: IconButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, '/Project (Ciprofloxacin page)');
                                  },
                                  icon: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset('assets/Images/Ciprofloxacin.png' , height: 118)
                                  )
                                ),
                              ),
                              SizedBox(height: 8),
                              Text('Ciprofloxacin' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
                              Text('JOD 38.15' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20)),
                            ],
                          ),
                        ),
                              
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                  Container(
                    child: Text('Healthcare' , style: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold),),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Row(
                      children: [

                        Container(
                          width: 320,
                          child: ExpansionTile(
                            title: Text('Eye Care' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                            trailing: Icon(
                              _customTileExpanded1
                              ? Icons.keyboard_arrow_down
                              : Icons.keyboard_arrow_right,
                            ),
                            children: [
                              Column(
                                children: [
                                  ListTile(

                                    title: ExpansionTile(
                                      title: Text('Eye Mask'),
                                      trailing: Icon(
                                        _customTileExpanded2
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_right,
                                      ),
                                      children: [

                                        ListTile(
                                          title: Container(
                                            height: 250,
                                            child: ListView(
                                              scrollDirection: Axis.horizontal,
                                              children: [
                                                      
                                                Container(
                                                  width: 133,
                                                  child: Column(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius: BorderRadius.circular(12),
                                                        child: Container(
                                                          child: Image.asset('assets/Images/Flents.avif' , height: 120),
                                                        ),
                                                      ),
                                                      SizedBox(height: 8),
                                                      Container(
                                                        width: 100,
                                                        child: Text('Flents, Reusable Sleep Mask, One Size Fits Most, 1 Mask' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 12) , textAlign: TextAlign.center,)),
                                                      Text('JOD 3.813' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                                                    ],
                                                  ),
                                                ),
                                          
                                                SizedBox(width: 15),
                                                      
                                                Container(
                                                  width: 133,
                                                  child: Column(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius: BorderRadius.circular(12),
                                                        child: Container(
                                                          child: Image.asset('assets/Images/Earth Therapeutics.avif' , height: 120),
                                                        ),
                                                      ),
                                                      SizedBox(height: 8),
                                                      Text('Earth Therapeutics, Green Tea Hydrogel Under-Eye Patch, 5 Pairs' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 12) , textAlign: TextAlign.center,),
                                                      Text('JOD 6.763' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                                                    ],
                                                  ),
                                                ),
                                          
                                                SizedBox(width: 15),
                                                      
                                                Container(
                                                  width: 133,
                                                  child: Column(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius: BorderRadius.circular(12),
                                                        child: Container(
                                                          child: Image.asset('assets/Images/Flents 1.avif' , width: 120,),
                                                        ),
                                                      ),
                                                      SizedBox(height: 8),
                                                      Text('Flents, Eye Mask, Hot and Cold Water Therapy, 1 Mask' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 12) , textAlign: TextAlign.center,),
                                                      SizedBox(height: 18),
                                                      Text('JOD 10.540' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                                                    ],
                                                  ),
                                                ),
                                                      
                                              ],
                                            ),
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

                                  ListTile(
                                    title: ExpansionTile(
                                      title: Text('Eye Accessories'),
                                      trailing: Icon(
                                        _customTileExpanded3
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_right,
                                      ),
                                      children: [

                                        ListTile(
                                          title: Container(
                                            height: 250,
                                            child: ListView(
                                              scrollDirection: Axis.horizontal,
                                              children: [
                                                      
                                                Container(
                                                  width: 133,
                                                  child: Column(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius: BorderRadius.circular(12),
                                                        child: Container(
                                                          child: Image.asset('assets/Images/Gel Beads.jpeg' , height: 120),
                                                        ),
                                                      ),
                                                      SizedBox(height: 8),
                                                      Container(
                                                        width: 100,
                                                        child: Text('Spa Solutions – Gel Beads Eye Mask Hot & Cold' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 12) , textAlign: TextAlign.center,)),
                                                      Text('JOD 3.75' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                                                    ],
                                                  ),
                                                ),
                                          
                                                SizedBox(width: 15),
                                                      
                                                Container(
                                                  width: 133,
                                                  child: Column(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius: BorderRadius.circular(12),
                                                        child: Container(
                                                          child: Image.asset('assets/Images/ComplEye.jpeg' , height: 120),
                                                        ),
                                                      ),
                                                      SizedBox(height: 8),
                                                      Text('ComplEye' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 12) , textAlign: TextAlign.center,),
                                                      SizedBox(height: 36,),
                                                      Text('JOD 5.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                                                    ],
                                                  ),
                                                ),
                                          
                                                SizedBox(width: 15),
                                                      
                                                Container(
                                                  width: 133,
                                                  child: Column(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius: BorderRadius.circular(12),
                                                        child: Container(
                                                          child: Image.asset('assets/Images/Magic Touch.jpg' , width: 120,),
                                                        ),
                                                      ),
                                                      SizedBox(height: 8),
                                                      Text('Magic Touch eye drop applicator' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 12) , textAlign: TextAlign.center,),
                                                      SizedBox(height: 18),
                                                      Text('JOD 14.94' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                                                    ],
                                                  ),
                                                ),
                                                      
                                              ],
                                            ),
                                          ),
                                        ),

                                      ],
                                      onExpansionChanged: (bool expanded) {
                                        setState(() {
                                          _customTileExpanded3 = expanded;
                                        });
                                      },
                                    ),
                                  ), 
                                ],
                              ),
                            ],
                            onExpansionChanged: (bool expanded) {
                              setState(() {
                                _customTileExpanded1 = expanded;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: 320,
                    margin: EdgeInsets.only(left: 6),
                    child: ExpansionTile(
                      title: Text('Cough & Cold Remedies' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                      trailing: Icon(
                        _customTileExpanded4
                        ? Icons.keyboard_arrow_down
                        : Icons.keyboard_arrow_right
                      ),
                      children: [

                        ListTile(
                          title: Container(
                            height: 250,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                      
                                Container(
                                  width: 133,
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Container(
                                          child: Image.asset('assets/Images/Otrivin.webp' , height: 120),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Container(
                                        width: 100,
                                        child: Text('Otrivin Oxy Fast Relief Adult Nasal Spray 10ml' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 12) , textAlign: TextAlign.center,)),
                                      Text('JOD 3.50' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                                    ],
                                  ),
                                ),
                          
                                SizedBox(width: 15),
                                      
                                Container(
                                  width: 133,
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Container(
                                          child: Image.asset('assets/Images/Strepsils.webp' , height: 120),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text('Strepsils Honey & Lemon Lozenge' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 12) , textAlign: TextAlign.center,),
                                      SizedBox(height: 36,),
                                      Text('JOD 4.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                                    ],
                                  ),
                                ),
                          
                                SizedBox(width: 15),
                                      
                                Container(
                                  width: 133,
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Container(
                                          child: Image.asset('assets/Images/Vicks.jpg' , width: 120,),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text('Vicks Vaporub Colds Relief 25ml' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 12) , textAlign: TextAlign.center,),
                                      SizedBox(height: 35.5),
                                      Text('JOD 10.49' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                                    ],
                                  ),
                                ),
                                      
                              ],
                            ),
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

                  SizedBox(height: 20),

                  Container(
                    child: Text('Baby & Mom Care' , style: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold),),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Row(
                      children: [

                        Container(
                          width: 320,
                          child: ExpansionTile(
                            title: Text('Bath & Body' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                            trailing: Icon(
                              _customTileExpanded5
                              ? Icons.keyboard_arrow_down
                              : Icons.keyboard_arrow_right,
                            ),
                            children: [
                              Column(
                                children: [

                                  ListTile(
                                    title: ExpansionTile(
                                      title: Text('Bar Soap'),
                                      trailing: Icon(
                                        _customTileExpanded6
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_right,
                                      ),
                                      children: [
                                        ListTile(
                                          title: Container(
                                            height: 250,
                                            child: ListView(
                                              scrollDirection: Axis.horizontal,
                                              children: [
                                                      
                                                Container(
                                                  width: 133,
                                                  child: Column(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius: BorderRadius.circular(12),
                                                        child: Container(
                                                          child: Image.asset('assets/Images/Dove.webp' , height: 120),
                                                        ),
                                                      ),
                                                      SizedBox(height: 8),
                                                      Container(
                                                        width: 100,
                                                        child: Text('Dove Beauty Bar Soap Pink 135g (Bundle Of 2) 135g X 2' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 12) , textAlign: TextAlign.center,)),
                                                      Text('JOD 5.78' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                                                    ],
                                                  ),
                                                ),
                                          
                                                SizedBox(width: 15),
                                                      
                                                Container(
                                                  width: 133,
                                                  child: Column(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius: BorderRadius.circular(12),
                                                        child: Container(
                                                          child: Image.asset('assets/Images/Dove1.webp' , height: 120),
                                                        ),
                                                      ),
                                                      SizedBox(height: 8),
                                                      Text('Dove Beauty Bar Soap White 100g (Bundle Of 3) (Imported) 100g X 3' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 12) , textAlign: TextAlign.center,),
                                                      Text('JOD 5.78' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                                                    ],
                                                  ),
                                                ),
                                          
                                                SizedBox(width: 15),
                                                      
                                                Container(
                                                  width: 133,
                                                  child: Column(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius: BorderRadius.circular(12),
                                                        child: Container(
                                                          child: Image.asset('assets/Images/Lifebuoy.webp' , width: 120,),
                                                        ),
                                                      ),
                                                      SizedBox(height: 8),
                                                      Text('Lifebuoy Skin Cleansing Soap Bar Care 100g (Bundle Of 4) 100g*4' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 12) , textAlign: TextAlign.center,),
                                                      Text('JOD 6.540' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                                                    ],
                                                  ),
                                                ),
                                                      
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                      onExpansionChanged: (bool expanded) {
                                        setState(() {
                                          _customTileExpanded6 = expanded;
                                        });
                                      },
                                    ),
                                  ), 
                                  
                                ],
                              ),
                            ],
                            onExpansionChanged: (bool expanded) {
                              setState(() {
                                _customTileExpanded5 = expanded;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: 320,
                    margin: EdgeInsets.only(left: 6),
                    child: ExpansionTile(
                      title: Text('Pacifiers & Accessories' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                      trailing: Icon(
                        _customTileExpanded7
                        ? Icons.keyboard_arrow_down
                        : Icons.keyboard_arrow_right
                      ),
                      children: [
                        ListTile(
                          title: Container(
                            height: 250,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                      
                                Container(
                                  width: 133,
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Container(
                                          child: Image.asset('assets/Images/Pacifier.webp' , height: 120),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Container(
                                        width: 100,
                                        child: Text('Apple Bear Silicone Pacifier(Baby) Petals Type(AB-604)' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 12) , textAlign: TextAlign.center,)),
                                      Text('JOD 3.50' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                                    ],
                                  ),
                                ),
                          
                                SizedBox(width: 15),
                                      
                                Container(
                                  width: 133,
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Container(
                                          child: Image.asset('assets/Images/Feeding Device.webp' , height: 120),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text('Apple Bear Dropper Feeding Device(Baby) Model-(AB-628)' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 12) , textAlign: TextAlign.center,),
                                      SizedBox(height: 36,),
                                      Text('JOD 2.00' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                                    ],
                                  ),
                                ),
                          
                                SizedBox(width: 15),
                                      
                                Container(
                                  width: 133,
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Container(
                                          child: Image.asset('assets/Images/Bear.webp' , width: 120,),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text('Apple Bear Fruit And Vegetable Nutrition Le Model-(AB-608)' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 12) , textAlign: TextAlign.center,),
                                      SizedBox(height: 35.5),
                                      Text('JOD 1.50' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                                    ],
                                  ),
                                ),
                                      
                              ],
                            ),
                          ),
                        )
                      ],
                      onExpansionChanged: (bool expanded) {
                        setState(() {
                          _customTileExpanded7 = expanded;
                        });
                      },
                    ),
                  ),
          
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}