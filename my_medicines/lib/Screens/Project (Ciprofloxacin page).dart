import 'package:flutter/material.dart';

void main(){
  runApp(ciprofloxacin());
}

class ciprofloxacin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : page17(),
    );
  }

}

class page17 extends StatefulWidget {

  @override
  _page17State createState() => _page17State();

}

class _page17State extends State<page17> {

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
                      child: Image.asset('assets/Images/Ciprofloxacin.png' , height: 330 , width: 400,),
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
                        height: 4170,
                      ),
                    ),
                  ),

                  Column(
                    children: [

                      Container(
                        margin: EdgeInsets.only(top: 40 , left: 30),
                          child: Row(
                            children: [
                              Text('Ciprofloxacin' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                              Container(
                                margin: EdgeInsets.only(left: 110),
                                child: Text('JOD 38.15' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 23),)
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
                                  Text('5.0 ' , style: TextStyle(fontWeight: FontWeight.bold),),
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
                                  width: 100,
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
                                  Text('Ciprofloxacin is a fluoroquinolone (flor-o-KWIN-o-lone) antibiotic, it is used to treat different types of bacterial infections. It is also used to treat people who have been exposed to anthrax or certain types of plague. Ciprofloxacin extended-release is only approved for use in adults.'),
                                  SizedBox(height: 15),
                                  Text('Fluoroquinolone antibiotics can cause serious or disabling side effects that may not be reversible.'),
                                  SizedBox(height: 15),
                                  Text('Ciprofloxacin should be used only for infections that cannot be treated with a safer antibiotic.')
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
                                  Text('Ciprofloxacin can cause serious side effects, including tendon problems, nerve damage, serious mood or behavior changes, or low blood sugar.'),
                                  SizedBox(height: 15),
                                  Text('Stop using ciprofloxacin and call your doctor at once if you have: headache, hunger, irritability, numbness, tingling, burning pain, confusion, agitation, paranoia, problems with memory or concentration, thoughts of suicide, or sudden pain or movement problems in any of your joints.'),
                                  SizedBox(height: 15),
                                  Text('In rare cases, ciprofloxacin may cause damage to your aorta, which could lead to dangerous bleeding or death. Get emergency medical help if you have severe and constant pain in your chest, stomach, or back.'),
                                  SizedBox(height: 15),
                                  Text('You may not be able to use this medicine if you have a muscle disorder. Tell your doctor if you have a history of myasthenia gravis.'),
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
                          title: Text('How should I take ciprofloxacin?' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                          trailing: Icon(
                            _customTileExpanded3
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_right
                          ),
                          children: [
                            ListTile(
                              title: Column(
                                children: [
                                  Text('Take ciprofloxacin exactly as prescribed by your doctor. Follow all directions on your prescription label and read all medication guides or instruction sheets.'),
                                  SizedBox(height: 15),
                                  Text('Take ciprofloxacin at the same time each day, with or without food.'),
                                  SizedBox(height: 15,),
                                  Text('Shake the oral suspension (liquid) for 15 seconds before you measure a dose. Use the dosing syringe provided, or use a medicine dose-measuring device (not a kitchen spoon). Do not give ciprofloxacin oral suspension through a feeding tube.'),
                                  SizedBox(height: 15,),
                                  Text('Swallow the extended-release tablet whole and do not crush, chew, or break it.'),
                                  SizedBox(height: 15,),
                                  Text('Drink plenty of liquids while you are taking this medicine.'),
                                  SizedBox(height: 15,),
                                  Text('Use ciprofloxacin for the full prescribed length of time, even if your symptoms quickly improve. Skipping doses can increase your risk of infection that is resistant to medication. Ciprofloxacin will not treat a viral infection such as the flu or a common cold.'),
                                  SizedBox(height: 15,),
                                  Text('Do not share this medicine with another person.'),
                                  SizedBox(height: 15,),
                                  Text('Store at room temperature away from moisture and heat. Do not allow the liquid medicine to freeze. Throw away any unused liquid after 14 days.'),
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
                          title: Text('Ciprofloxacin side effects' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                          trailing: Icon(
                            _customTileExpanded4
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_right
                          ),
                          children: [
                            ListTile(
                              title: Column(
                                children: [
                                  Text('Get emergency medical help if you have signs of an allergic reaction to ciprofloxacin (hives, difficult breathing, swelling in your face or throat) or a severe skin reaction (fever, sore throat, burning in your eyes, skin pain, red or purple skin rash that spreads and causes blistering and peeling).'),
                                  SizedBox(height: 15),
                                  Text('Ciprofloxacin can cause serious side effects, including tendon problems, damage to your nerves (which may be permanent), serious mood or behavior changes (after just one dose), or low blood sugar (which can lead to coma).'),
                                  SizedBox(height: 15,),
                                  Text('Stop taking this medicine and call your doctor at once if you have:' , style: TextStyle(fontWeight: FontWeight.bold) , textAlign: TextAlign.center,),
                                  SizedBox(height: 10,),
                                  Container(
                                    margin: EdgeInsets.only(left: 30),
                                    child: Column(
                                      children: [
                                        Text('1- low blood sugar - headache, hunger, irritability, dizziness, nausea, fast heart rate, or feeling shaky.'),
                                        Text('2- nerve damage symptoms - numbness, tingling, burning pain in your hands, arms, legs, or feet.'),
                                        Text('3- serious mood or behavior changes - nervousness, confusion, agitation, paranoia, hallucinations, memory problems, trouble concentrating, thoughts of suicide.'),
                                        Text('4- signs of tendon rupture - sudden pain, swelling, bruising, tenderness, stiffness, movement problems, or a snapping or popping sound in any of your joints (rest the joint until you receive medical care or instructions).'),
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
                                  Text('In rare cases, ciprofloxacin may cause damage to your aorta, the main blood artery of the body. This could lead to dangerous bleeding or death. Get emergency medical help if you have severe and constant pain in your chest, stomach, or back.'),
                                  SizedBox(height: 15,),
                                  Text('Also, stop using this medicine and call your doctor at once if you have:' , style: TextStyle(fontWeight: FontWeight.bold) , textAlign: TextAlign.center,),
                                  SizedBox(height: 10),
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 30),
                                          child: Text('1- severe stomach pain, diarrhea that is watery or bloody.')
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 30),
                                          child: Text('2- fast or pounding heartbeats, fluttering in your chest, shortness of breath, and sudden dizziness (like you might pass out).')
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(left: 30),
                                          child: Text('3- any skin rash, no matter how mild.')
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 30),
                                          child: Text('4- muscle weakness, breathing problems.')
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(left: 30),
                                          child: Text('5- little or no urination.')
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 30),
                                          child: Text('6- jaundice (yellowing of the skin or eyes).')
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 30),
                                          child: Text('7- increased pressure inside the skull - severe headaches, ringing in your ears, dizziness, nausea, vision problems, pain behind your eyes.')
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Text('Common ciprofloxacin side effects may include:' , style: TextStyle(fontWeight: FontWeight.bold) , textAlign: TextAlign.center,),
                                  SizedBox(height: 10),
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 30),
                                          child: Text('1- nausea, vomiting, diarrhea, stomach pain.')
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(left: 30),
                                          child: Text('2- headache.')
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(left: 30),
                                          child: Text('3- abnormal liver function tests.')
                                        ),
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