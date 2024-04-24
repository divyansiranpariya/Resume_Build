import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/global.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            //  backgroundColor: Colors.teal,
            ),
        body: Container(
          //     color: Colors.pink,
          child: SingleChildScrollView(
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Container(
                    height: 329,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://www.shutterstock.com/image-vector/biography-story-writing-vector-autobiography-260nw-2247091721.jpg")),
                    ),
                    // child:
                  ),
                ),
                Text(
                  "RESUMES",
                  style: TextStyle(fontSize: 30),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Resume Name"),
                              content: Expanded(
                                child: TextField(
                                  onChanged: (val) {
                                    Global.allresume = val;
                                  },
                                  decoration: InputDecoration(
                                    hintText: "Enter your Resume Name",
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              actions: [
                                FloatingActionButton(
                                  onPressed: () {
                                    Navigator.of(context).pop('/');
                                  },
                                  child: Icon(Icons.close),
                                  mini: true,
                                  elevation: 3,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed('WorkspacePage');
                                  },
                                  child: Icon(Icons.done),
                                  mini: true,
                                  elevation: 3,
                                ),
                              ],
                            );
                          });
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 40, bottom: 40, left: 40, right: 40),
                    height: 100,
                    width: 340,
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 3,
                          offset: Offset(2, 3),
                        ),
                      ],
                      color: Colors.grey.shade200,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 105,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDGq9BI5WG1iwYmnW_kSKokm4k1Fo__-aLqx-Ytb0N8pbfX2-qKFFknIgkJftN1n-WBEU&usqp=CAU"))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "Create Resume",
                            style:
                                TextStyle(fontSize: 21.5, color: Colors.teal),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 10, bottom: 40, left: 40, right: 40),
                  height: 100,
                  width: 340,
                  decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        spreadRadius: 3,
                        offset: Offset(2, 3),
                      ),
                    ],
                    color: Colors.grey.shade200,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('ResumePage');
                    },
                    child: Row(
                      children: [
                        Container(
                          width: 105,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://www.shutterstock.com/image-vector/textlines-document-icon-isolated-personal-260nw-1610441581.jpg"))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "View Resume",
                            style:
                                TextStyle(fontSize: 21.5, color: Colors.teal),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
