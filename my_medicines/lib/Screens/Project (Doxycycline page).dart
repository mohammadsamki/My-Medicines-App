import 'package:flutter/material.dart';

void main(){
  runApp(doxycycline());
}

class doxycycline extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : page15(),
    );
  }

}

class page15 extends StatefulWidget {

  @override
  _page15State createState() => _page15State();

}

class _page15State extends State<page15> {

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
                      child: Image.asset('assets/Images/Doxycycline.jpg' , height: 330 , width: 400,),
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
                        height: 4180,
                      ),
                    ),
                  ),

                  Column(
                    children: [

                      Container(
                        margin: EdgeInsets.only(top: 40 , left: 30),
                          child: Row(
                            children: [
                              Text('Doxycycline' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                              Container(
                                margin: EdgeInsets.only(left: 130),
                                child: Text('JOD 12.80' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 23),)
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
                                  Text('Doxycycline is a tetracycline antibiotic that inhibits bacterial growth and is thought to have anti-inflammatory effects. Doxycycline is used to treat many different bacterial infections including acne, urinary and respiratory tract infections, eye infections, gum disease, gonorrhea, chlamydia, and syphilis. It can also be used prevent malaria and treat infections caused by mites, ticks, or lice.'),
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
                                  Text('You should not take doxycycline if you are allergic to any tetracycline antibiotic.'),
                                  SizedBox(height: 15),
                                  Text('Children younger than 8 years old should use doxycycline only in cases of severe or life-threatening conditions. This medicine can cause permanent yellowing or graying of the teeth in children.'),
                                  SizedBox(height: 15,),
                                  Text("Using doxycycline during pregnancy could harm the unborn baby or cause permanent tooth discoloration later in the baby's life."),
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
                          title: Text('How should I take doxycycline?' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                          trailing: Icon(
                            _customTileExpanded3
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_right
                          ),
                          children: [
                            ListTile(
                              title: Column(
                                children: [
                                  Text('Take doxycycline exactly as prescribed by your doctor. Follow all directions on your prescription label. Do not take this medicine in larger or smaller amounts or for longer than recommended.'),
                                  SizedBox(height: 15),
                                  Text('Take doxycycline with a full glass of water. Drink plenty of liquids while you are taking this medicine.'),
                                  SizedBox(height: 15,),
                                  Text('Most brands of doxycyline may be taken with food or milk if the medicine upsets your stomach. Different brands of doxycycline may have different instructions about taking them with or without food.'),
                                  SizedBox(height: 15,),
                                  Text('Take Oracea on an empty stomach, at least 1 hour before or 2 hours after a meal.'),
                                  SizedBox(height: 15,),
                                  Text('You may open a regular capsule or break up a regular tablet and sprinkle the medicine into a spoonful of applesauce to make swallowing easier. Swallow right away without chewing. Do not save the mixture for later use. Drink a full glass (8 ounces) of cool water right away.'),
                                  SizedBox(height: 15,),
                                  Text('Do not crush, break, or open a delayed-release capsule or tablet. Swallow the pill whole.'),
                                  SizedBox(height: 15,),
                                  Text("You may need to split a doxycycline tablet to get the correct dose. Follow your doctor's instructions."),
                                  SizedBox(height: 15,),
                                  Text('Measure liquid medicine with the dosing syringe provided, or with a special dose-measuring spoon or medicine cup. If you do not have a dose-measuring device, ask your pharmacist for one.'),
                                  SizedBox(height: 15,),
                                  Text("If you take doxycycline to prevent malaria: Start taking the medicine 1 or 2 days before entering an area where malaria is common. Continue taking the medicine every day during your stay and for at least 4 weeks after you leave the area. Use protective clothing, insect repellents, and mosquito netting around your bed to further prevent mosquito bites that could cause malaria."),
                                  SizedBox(height: 15,),
                                  Text('Doxycycline is given by injection only if you are unable to take the medicine by mouth. A healthcare provider will give you this injection as an infusion into a vein.'),
                                  SizedBox(height: 15,),
                                  Text('Use this medicine for the full prescribed length of time. Your symptoms may improve before the infection is completely cleared. Skipping doses may also increase your risk of further infection that is resistant to antibiotics. Doxycycline will not treat a viral infection such as the flu or a common cold.'),
                                  SizedBox(height: 15,),
                                  Text('If you need surgery, tell the surgeon ahead of time that you are using doxycycline.'),
                                  SizedBox(height: 15,),
                                  Text('Store at room temperature away from moisture, heat and light.'),
                                  SizedBox(height: 15,),
                                  Text('Throw away any unused medicine after the expiration date on the label has passed. Using expired doxycycline can cause damage to your kidneys.'),
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
                                  Text('Get emergency medical help if you have any signs of an allergic reaction to doxycycline: (hives, difficult breathing, swelling in your face or throat) or a severe skin reaction (fever, sore throat, burning in your eyes, skin pain, red or purple skin rash that spreads and causes blistering and peeling).'),
                                  SizedBox(height: 15),
                                  Text('Seek medical treatment if you have a serious drug reaction that can affect many parts of your body. Symptoms may include: skin rash, fever, swollen glands, flu-like symptoms, muscle aches, severe weakness, unusual bruising, or yellowing of your skin or eyes. This reaction may occur several weeks after you began using doxycycline.'),
                                  SizedBox(height: 15,),
                                  Text('Doxycycline may cause serious side effects. Call your doctor at once if you have:' , textAlign: TextAlign.center , style: TextStyle(fontWeight: FontWeight.bold),),
                                  SizedBox(height: 10,),
                                  Container(
                                    margin: EdgeInsets.only(right: 50),
                                    child: Container(
                                      margin: EdgeInsets.only(left: 30),
                                      child: Column(
                                        children: [
                                          Text('1- severe stomach pain, diarrhea that is watery or bloody.'),
                                          Text('2- throat irritation, trouble swallowing.'),
                                          Text('3- chest pain, irregular heart rhythm, feeling short of breath.'),
                                          Container(
                                            margin: EdgeInsets.only(right: 84),
                                            child: Text('4- little or no urination')
                                          ),
                                          Text('5- low white blood cell counts - fever, chills, swollen glands, body aches, weakness, pale skin, easy bruising or bleeding.'),
                                          Text('6- severe headaches, ringing in your ears, dizziness, nausea, vision problems, pain behind your eyes.'),
                                          Text('7- loss of appetite, upper stomach pain (that may spread to your back), tiredness, nausea or vomiting, fast heart rate, dark urine, jaundice (yellowing of the skin or eyes).'),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Container(
                                    margin: EdgeInsets.only(left: 30),
                                    child: Text('Common side effects of doxycycline may include:' , style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    child: Container(
                                      margin: EdgeInsets.only(right: 100),
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 15),
                                            child: Text('1- nausea and vomiting.')
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 30),
                                            child: Text('2- upset stomach.')
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 25),
                                            child: Text('3- loss of appetite.')
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 43),
                                            child: Text('4- mild diarrhea.')
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 1),
                                            child: Text('5- skin rash or itching.')
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 4),
                                            child: Text('6- darkened skin color.')
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 32),
                                            child: Text('7- vaginal itching or discharge.')
                                          ),
                                        ],
                                      ),
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