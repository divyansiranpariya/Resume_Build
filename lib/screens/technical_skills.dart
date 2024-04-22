import 'package:build_resume/utils/textstyling_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/custome_widget.dart';
import '../utils/global.dart';

class TechnicalPage extends StatefulWidget {
  const TechnicalPage({super.key});

  @override
  State<TechnicalPage> createState() => _TechnicalPageState();
}

class _TechnicalPageState extends State<TechnicalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CustomWidget.getAppBar(title: "Technical Skills", context: context),
      body: Container(
        color: Colors.grey.shade200,
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 35),
          width: 370,
          height: double.infinity,
          color: primaryWhite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35, bottom: 35),
                  child: Text(
                    "Enter Your skills",
                    style: TextStyling.contentLabes,
                  ),
                ),
                ...Global.allSkills.map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(left: 20, right: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            // onChanged:(){},
                            // controller: ,
                            decoration: InputDecoration(
                              hintText: "C programming,Web Technical",
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              Global.allSkills.remove(e);
                            });
                          },
                          icon: Icon(
                            Icons.delete_outline_outlined,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          Global.allSkills.add(TextEditingController());
                        });
                      },
                      child: Icon(Icons.add)),
                ),
                Container(
                  width: 340,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          // courese.clear();
                          // school.clear();
                          // collage.clear();
                          // year.clear();
                        },
                        child: Text(
                          "clear",
                          style: TextStyling.primaryLabels,
                        ),
                        style: ButtonStyle(),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Global.allSkills.forEach((element) {
                              element.clear();
                            });
                            Navigator.of(context).pushNamed('WorkspacePage');
                            setState(() {
                              Global.allSkills = [
                                TextEditingController(),
                                TextEditingController()
                              ];
                            });
                          },
                          child: Text(
                            "Save",
                            style: TextStyling.primaryLabels,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
