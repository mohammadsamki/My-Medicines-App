import 'package:flutter/material.dart';

void main(){
  runApp(amoxicillin());
}

class amoxicillin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : page14(),
    );
  }

}

class page14 extends StatefulWidget {

  @override
  _page14State createState() => _page14State();

}

class _page14State extends State<page14> {

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
              margin: EdgeInsets.only(left: 100),
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
                      child: Image.asset('assets/Images/Amoxicillin.jpeg' , height: 330 , width: 400,),
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
                        height: 3810,
                      ),
                    ),
                  ),

                  Column(
                    children: [

                      Container(
                        margin: EdgeInsets.only(top: 40 , left: 30),
                          child: Row(
                            children: [
                              Text('Amoxicillin' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                              Container(
                                margin: EdgeInsets.only(left: 130),
                                child: Text('JOD 11.78' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 23),)
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
                                  Text('6.3 ' , style: TextStyle(fontWeight: FontWeight.bold),),
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
                                  width: 115,
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
                                  Text('Amoxicillin is a penicillin antibiotic that fights bacteria. Amoxicillin is used to treat many different types of infection caused by bacteria, such as tonsillitis, bronchitis, pneumonia, and infections of the ear, nose, throat, skin, or urinary tract.'),
                                  SizedBox(height: 15),
                                  Text('Amoxicillin is also sometimes used together with another antibiotic called clarithromycin (Biaxin) to treat stomach ulcers caused by Helicobacter pylori infection. This combination is sometimes used with a stomach acid reducer called lansoprazole (Prevacid).')
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
                                  Text('Do not use this medication if you are allergic to amoxicillin or to any other penicillin antibiotic, such as ampicillin (Omnipen, Principen), dicloxacillin (Dycill, Dynapen), oxacillin (Bactocill), penicillin (Beepen-VK, Ledercillin VK, Pen-V, Pen-Vee K, Pfizerpen, V-Cillin K, Veetids), and others.'),
                                  SizedBox(height: 15),
                                  Text('Before using amoxicillin, tell your doctor if you are allergic to cephalosporins such as Omnicef, Cefzil, Ceftin, Keflex, and others. Also tell your doctor if you have asthma, liver or kidney disease, a bleeding or blood clotting disorder, mononucleosis (also called "mono"), or any type of allergy.'),
                                  SizedBox(height: 15,),
                                  Text('Amoxicillin can make birth control pills less effective. Ask your doctor about using a non-hormone method of birth control (such as a condom, diaphragm, spermicide) to prevent pregnancy while taking this medicine. Take this medication for the full prescribed length of time. Your symptoms may improve before the infection is completely cleared. Amoxicillin will not treat a viral infection such as the common cold or flu. Do not share this medication with another person, even if they have the same symptoms you have.'),
                                  SizedBox(height: 15,),
                                  Text('Antibiotic medicines can cause diarrhea. This may happen while you are taking amoxicillin, or within a few months after you stop taking it. This may be a sign of a new infection. If you have diarrhea that is watery or bloody, stop taking this medicine and call your doctor. Do not use anti-diarrhea medicine unless your doctor tells you to.')
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
                          title: Text('How should I take amoxicillin?' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                          trailing: Icon(
                            _customTileExpanded3
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_right
                          ),
                          children: [
                            ListTile(
                              title: Column(
                                children: [
                                  Text('Take amoxicillin exactly as prescribed by your doctor. Follow all directions on your prescription label and read all medication guides or instruction sheets.'),
                                  SizedBox(height: 15),
                                  Text('Take amoxicillin at the same time each day.'),
                                  SizedBox(height: 15,),
                                  Text('Some forms of amoxicillin may be taken with or without food. Check your medicine label to see if you should take your mediicne with food or not.'),
                                  SizedBox(height: 15,),
                                  Text('Shake the oral suspension (liquid) before you measure a dose.'),
                                  SizedBox(height: 15,),
                                  Text('Measure liquid medicine with the dosing syringe provided, or use a medicine dose-measuring device (not a kitchen spoon). You may mix the liquid with water, milk, baby formula, fruit juice, or ginger ale. Drink all of the mixture right away. Do not save for later use.'),
                                  SizedBox(height: 15,),
                                  Text('You must chew the chewable tablet before you swallow it.'),
                                  SizedBox(height: 15,),
                                  Text('Swallow the regular tablet whole and do not crush, chew, or break it.'),
                                  SizedBox(height: 15,),
                                  Text('You will need frequent medical tests.'),
                                  SizedBox(height: 15,),
                                  Text("If you are taking amoxicillin with clarithromycin and/or lansoprazole to treat stomach ulcer, use all of your medications as directed. Read the medication guide or patient instructions provided with each medication. Do not change your doses or medication schedule without your doctor's advice."),
                                  SizedBox(height: 15,),
                                  Text('Use this medicine for the full prescribed length of time, even if your symptoms quickly improve. Skipping doses can increase your risk of infection that is resistant to medication. Amoxicillin will not treat a viral infection such as the flu or a common cold.'),
                                  SizedBox(height: 15,),
                                  Text('Do not share this medicine with another person, even if they have the same symptoms you have.'),
                                  SizedBox(height: 15,),
                                  Text('This medicine can affect the results of certain medical tests. Tell any doctor who treats you that you are using this medicine .'),
                                  SizedBox(height: 15,),
                                  Text('Store at room temperature away from moisture, heat, and light.'),
                                  SizedBox(height: 15,),
                                  Text('You may store liquid amoxicillin in a refrigerator but do not allow it to freeze. Throw away any liquid mediicne that is not used within 14 days after it was mixed at the pharmacy.'),
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
                          title: Text('Amoxicillin side effects' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                          trailing: Icon(
                            _customTileExpanded4
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_right
                          ),
                          children: [
                            ListTile(
                              title: Column(
                                children: [
                                  Text('Get emergency medical help if you have signs of an allergic reaction to amoxicillin (hives, difficult breathing, swelling in your face or throat) or a severe skin reaction (fever, sore throat, burning eyes, skin pain, red or purple skin rash with blistering and peeling).'),
                                  SizedBox(height: 15),
                                  Text('Call your doctor at once if you have:'),
                                  SizedBox(height: 10,),
                                  Container(
                                    margin: EdgeInsets.only(right: 50),
                                    child: Column(
                                      children: [
                                        Text('1- severe stomach pain.'),
                                        Container(
                                          margin: EdgeInsets.only(left: 51),
                                          child: Text('2- diarrhea that is watery or bloody (even if it occurs months after your last dose).')
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Container(
                                    margin: EdgeInsets.only(left: 30),
                                    child: Text('Common amoxicillin side effects may include:'),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    child: Column(
                                      children: [
                                        Text('1- nausea, vomiting, diarrhea.'),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(left: 54),
                                          child: Text('2- rash.')
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