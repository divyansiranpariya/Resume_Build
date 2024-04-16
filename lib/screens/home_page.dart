import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';

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
        body: Column(
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
                Navigator.of(context).pushNamed('WorkspacePage');
              },
              child: Container(
                margin: EdgeInsets.all(45),
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
                        style: TextStyle(fontSize: 21.5, color: Colors.teal),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
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
                                "https://www.shutterstock.com/image-vector/textlines-document-icon-isolated-personal-260nw-1610441581.jpg"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "View Resume",
                      style: TextStyle(fontSize: 21.5, color: Colors.teal),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
