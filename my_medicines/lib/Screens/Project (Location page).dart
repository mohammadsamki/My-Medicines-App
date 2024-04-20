import 'package:flutter/material.dart';

void main(){
  runApp(location());
}

class location extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: page13(),
    );
  }

}

class page13 extends StatefulWidget {

  @override
  _page13State createState() => _page13State();

}

class _page13State extends State<page13> {

  int _selectedIndex = 0;

  var modeColor = Colors.white;
  var buttonColor = Colors.black;
  var buttonTextColor = Colors.black;

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      initialIndex: 3,
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
                onPressed: (){
                  Navigator.pushNamed(context, '/Project (Order page1)');
                },
                icon: Icon(Icons.shopping_bag_rounded),
              ),
              IconButton(
                onPressed: (){},
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
      )
    );
  }
}