import 'package:flutter/material.dart';

void main(){
  runApp(cephalexin());
}

class cephalexin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : page16(),
    );
  }

}

class page16 extends StatefulWidget {

  @override
  _page16State createState() => _page16State();

}

class _page16State extends State<page16> {

  bool _customTileExpanded1 = false;
  bool _customTileExpanded2 = false;
  bool _customTileExpanded3 = false;
  bool _customTileExpanded4 = false;

  @override
  Widget build(BuildContext context){

    return Scaffold(

      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(23),
          topLeft: Radius.circular(23),
        ),
        child: Container(
          height: 65,
          child: BottomAppBar(
            color: Color.fromRGBO(52, 52, 52, 1),
            child: Container(
              margin: EdgeInsets.only(left: 95),
              child: Row(
                children: [

                  IconButton(
                    onPressed: (){
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

      body: ListView(
        children: [

          Column(
            children: [

              Container(
                color: Color.fromRGBO(255, 252, 250, 1),
                child: Stack(
                  children: [
                
                    Container(
                      margin: EdgeInsets.only(left: 100 , top: 70),
                      child: CircleAvatar(
                        radius: 100,
                        backgroundColor: Color.fromRGBO(234, 202, 183, 0.2),
                      ),
                    ),
                
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Image.asset('assets/Images/Cephalexin.jpg' , height: 330 , width: 400,),
                    ),
                
                    Container(
                      margin: EdgeInsets.only(left: 25 , top: 25.3),
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

                  ],
                ),
              ),

              Stack(
                children: [

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 206, 204, 204),
                          blurRadius: 3,
                        ),
                      ]
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(22),
                        topLeft: Radius.circular(22),
                      ),
                      child: Container(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        height: 2600,
                      ),
                    ),
                  ),

                  Column(
                    children: [

                      Container(
                        margin: EdgeInsets.only(top: 40 , left: 30),
                          child: Row(
                            children: [
                              Text('Cephalexin' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                              Container(
                                margin: EdgeInsets.only(left: 130),
                                child: Text('JOD 12.76' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 23),)
                              ),
                            ],
                          ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 27 , top: 5),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 2),
                              child: Row(
                                children: [
                                  Text('6.4 ' , style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text('/ 10'),
                                ],
                              )
                            ),
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10 , top: 1),
                                  width: 200,
                                  child: Divider(
                                    thickness: 4,
                                    height: 40,
                                    color: Color.fromRGBO(239, 240, 241, 1),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10 , top: 1),
                                  width: 117,
                                  child: Divider(
                                    thickness: 4,
                                    height: 40,
                                    color: Color.fromRGBO(80, 138, 123, 1),
                                  ),
                                ),
                              ]
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
                          title: Text('Description' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                          trailing: Icon(
                            _customTileExpanded1
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_right
                          ),
                          children: [
                            ListTile(
                              title: Column(
                                children: [
                                  Text('Cephalexin is a cephalosporin (SEF a low spor in) antibiotic. It works by fighting bacteria in your body.'),
                                  SizedBox(height: 15),
                                  Text('Cephalexin is used to treat infections caused by bacteria, including upper respiratory infections, ear infections, skin infections, urinary tract infections and bone infections.')
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
                          title: Text('Warnings' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                          trailing: Icon(
                            _customTileExpanded2
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_right
                          ),
                          children: [
                            ListTile(
                              title: Column(
                                children: [
                                  Text('You should not use this medicine if you are allergic to cephalexin or to similar antibiotics, such as Ceftin, Cefzil, Omnicef, and others. Tell your doctor if you are allergic to any drugs, especially penicillins or other antibiotics.'),
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
                          title: Text('How should I take cephalexin?' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                          trailing: Icon(
                            _customTileExpanded3
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_right
                          ),
                          children: [
                            ListTile(
                              title: Column(
                                children: [
                                  Text('Take cephalexin exactly as prescribed by your doctor. Follow all directions on your prescription label and read all medication guides or instruction sheets.'),
                                  SizedBox(height: 15),
                                  Text('Do not use cephalexin to treat any condition that has not been checked by your doctor.'),
                                  SizedBox(height: 15,),
                                  Text('Measure liquid medicine carefully. Use the dosing syringe provided, or use a medicine dose-measuring device (not a kitchen spoon).'),
                                  SizedBox(height: 15,),
                                  Text('Use cephalexin for the full prescribed length of time, even if your symptoms quickly improve. Skipping doses can increase your risk of infection that is resistant to medication. This medicine will not treat a viral infection such as the flu or a common cold.'),
                                  SizedBox(height: 15,),
                                  Text('Do not share cephalexin with another person, even if they have the same symptoms you have.'),
                                  SizedBox(height: 15,),
                                  Text('This medicine can affect the results of certain medical tests. Tell any doctor who treats you that you are using this medicine.'),
                                  SizedBox(height: 15,),
                                  Text('Store the tablets and capsules at room temperature away from moisture, heat, and light.'),
                                  SizedBox(height: 15,),
                                  Text('Store the liquid medicine in the refrigerator. Throw away any unused liquid after 14 days.'),
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
                          title: Text('Cephalexin side effects' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                          trailing: Icon(
                            _customTileExpanded4
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_right
                          ),
                          children: [
                            ListTile(
                              title: Column(
                                children: [
                                  Text('Get emergency medical help if you have signs of an allergic reaction to cephalexin (hives, difficult breathing, swelling in your face or throat) or a severe skin reaction (fever, sore throat, burning eyes, skin pain, red or purple skin rash with blistering and peeling).'),
                                  SizedBox(height: 15),
                                  Text('Call your doctor at once if you have:' , style: TextStyle(fontWeight: FontWeight.bold),),
                                  SizedBox(height: 10,),
                                  Container(
                                    margin: EdgeInsets.only(left: 30),
                                    child: Column(
                                      children: [
                                        Text('1- severe stomach pain, diarrhea that is watery or bloody (even if it occurs months after your last dose).'),
                                        Text('2- unusual tiredness, feeling light-headed or short of breath.'),
                                        Text('3- easy bruising, unusual bleeding, purple or red spots under your skin.'),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          child: Text('4- a seizure.')
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          child: Text('5- pale skin, cold hands and feet.')
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          child: Text('6- yellowed skin, dark colored urine.')
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          child: Text('7- fever, weakness.')
                                        ),
                                        Text('8- pain in your side or lower back, painful urination.'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Container(
                                    margin: EdgeInsets.only(left: 30),
                                    child: Text('Common cephalexin side effects may include:' , style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(left: 30),
                                          child: Text('1- diarrhea.')
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(left: 30),
                                          child: Text('2- nausea, vomiting.')
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(left: 30),
                                          child: Text('3- indigestion, stomach pain.')
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(left: 30),
                                          child: Text('4- vaginal itching or discharge.')
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Container(
                                    child: Column(
                                      children: [
                                        Text('To learn more, please send your inquiry ' , style: TextStyle(fontWeight: FontWeight.bold),),
                                        IconButton(
                                          onPressed: (){
                                            Navigator.pushNamed(context, '/Project (For inquirie page)');
                                          }, 
                                          icon: Text('(Click here)' , style: TextStyle(decoration: TextDecoration.underline),)
                                        ),
                                      ],
                                    ),
                                  ),
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

            ],
          ),
          
        ],
      ),
    );

  }
}