import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';
var db = FirebaseFirestore.instance;

class page21 extends StatefulWidget {

  @override
  _page21State createState() => _page21State();

}

class _page21State extends State<page21> {

  final  _formKey = GlobalKey<FormState>();
  String _productName = '';
  double _productPrice = 0.0;
  String _productDescription = '';
  List _productImage = [];
  // File? galaryFile;
  // final picker = ImagePicker();

  // Future getImageFile (ImageSource img) async {
  //   final chosenFile = await picker.pickImage(source: img);
  //   XFile? newFile = chosenFile;

  //   setState(() {
  //     if (newFile != null) {
  //       galaryFile = File(chosenFile!.path);
  //     }
  //     else{
  //       print('No file found');
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context){
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

              Form(
                key : _formKey,
                child: Column(
                  children: [

                    Row(
                      children: [

                        Container(
                          margin: EdgeInsets.only(left: 30),
                          width: 150,
                          child: Expanded(
                            child: TextFormField(
                              validator: (value) {
                                if( value!.isEmpty ) {
                                  return "Please enter drug name";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                labelText: 'Drug Name',
                                border: OutlineInputBorder()
                              ),
                              onSaved: (newValue) {
                                _productName = newValue!;
                              },
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(left: 30),
                          width: 150,
                          child: TextFormField(
                            validator: (value) {
                              if( value!.isEmpty ) {
                                return "Please enter drug price";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Drug Price',
                              border: OutlineInputBorder()
                            ),
                            onSaved: (newValue) {
                              _productPrice = double.parse(newValue!);
                            },
                          ),
                        ),

                      ],
                    ),

                    SizedBox(height: 40),

                    Container(
                      width: 220,
                      child: TextFormField(
                        validator: (value) {
                          if( value!.isEmpty ) {
                            return "Please enter drug notes";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Drug Notes',
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 5,
                        onSaved: (newValue) {
                          _productDescription = newValue!;
                        },
                      ),
                    ),

                    SizedBox(height: 20),

                    Container(
                      width: 300,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Product Image',
                          border: OutlineInputBorder(),
                        ),
                        onSaved: (newValue) {
                          _productImage = [newValue];
                        }
                      ),
                    ),

                    // Container(
                    //   height: 40,
                    //   width: 160,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.all(Radius.circular(30)),
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: Colors.grey,
                    //         offset: Offset(0, 3),
                    //       )
                    //     ]
                    //   ),
                    //   child: ElevatedButton(
                    //     style: ElevatedButton.styleFrom(
                    //       backgroundColor: Colors.white
                    //     ),
                    //     onPressed: (){
                    //       getImageFile(ImageSource.camera);
                    //     }, 
                    //     child: Row(
                    //       children: [
                    //         Icon(Icons.attach_file , size: 22,),
                    //         SizedBox(width: 5),
                    //         Text('Drug Image')
                    //       ],
                    //     )
                    //   ),
                    // ),

                    SizedBox(height: 60),

                    Container(
                      width: 200,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(140, 248, 239, 1),
                          side: BorderSide()
                        ),
                        onPressed: (){
                          if(_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            db.collection('Medicines').add({
                              'Name': _productName,
                              'Price': _productPrice,
                              'Description': _productDescription,
                              'Image': _productImage,
                            }).then((value) => print('Added Data With ID: ${value.id}'));
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => CupertinoAlertDialog(
                                title: Center(child: Text('Add Medicine')),
                                content: Container(
                                  height: 50,
                                  child: Column(
                                    children: [
                                      Text('Medication added'),
                                      Icon(Icons.check_circle_outline , size: 30,),
                                    ],
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'Ok'),
                                    child: Text('OK'),
                                  ),
                                ]     
                              )
                            );
                          }
                          else{
                            print('error');
                          }
                        }, 
                        child: Row(
                          children: [
                            Icon(Icons.add_circle , color: Colors.grey,),
                            SizedBox(width: 4),
                            Text('Add Medicine' , style: TextStyle(fontSize: 20),)
                          ],
                        )
                      ),
                    ),

                    SizedBox(height: 20,),

                    Container(
                      width: 200,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(140, 248, 239, 1),
                          side: BorderSide()
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, '/Project (Home page)');
                        }, 
                        
                            child: Text('Home Page' , style: TextStyle(fontSize: 20),)
                         
                      ),
                    ),

                  ],
                )
              )

            ],
          ),
          
        ],
      ),
    );
  }
}