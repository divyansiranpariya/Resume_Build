import 'package:build_resume/utils/color.dart';
import 'package:build_resume/utils/tosted_message.dart';

import 'package:flutter/material.dart';

import '../utils/custome_widget.dart';
import '../utils/global.dart';
import '../utils/textstyling_page.dart';

class Personal_Details extends StatefulWidget {
  const Personal_Details({super.key});

  @override
  State<Personal_Details> createState() => _Personal_DetailsState();
}

class _Personal_DetailsState extends State<Personal_Details> {
  GlobalKey<FormState> infoDetail = GlobalKey<FormState>();
  TextEditingController dobController = TextEditingController();
  TextEditingController materialController = TextEditingController();
  TextEditingController LanguagesController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();

  String radioStatus = " ";
  bool hindi = false;
  bool gujarati = false;
  bool english = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CustomWidget.getAppBar(title: "Personal Details", context: context),
      body: Container(
        color: Colors.grey.shade200,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 45),
                width: 360,
                color: primaryWhite,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Form(
                        key: infoDetail,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomWidget.textdetail(text: "DOB"),
                            Container(
                              height: 70,
                              width: 340,
                              color: primaryWhite,
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "required";
                                  }
                                },
                                onSaved: (val) {
                                  Global.dob = val!;
                                },
                                style: TextStyling.secondryLabels,
                                controller: dobController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "DD/MM/YYYY",
                                    contentPadding:
                                        EdgeInsets.only(top: 20, left: 15)),
                              ),
                            ),
                            CustomWidget.textdetail(text: "Material Status"),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 100,
                              width: 340,
                              color: Colors.white,
                              //color: Colors.pink,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Radio(
                                          value: "Male",
                                          groupValue: radioStatus,
                                          onChanged: (val) {
                                            setState(() {
                                              radioStatus = val!;
                                            });
                                          }),
                                      Text(
                                        "Male",
                                        style: TextStyling.pagelabel,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Radio(
                                          value: "Female",
                                          groupValue: radioStatus,
                                          onChanged: (val) {
                                            setState(() {
                                              radioStatus = val!;
                                            });
                                          }),
                                      Text(
                                        "Female",
                                        style: TextStyling.pagelabel,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            CustomWidget.textdetail(text: "Languages Known"),
                            Container(
                              height: 150,
                              width: 340,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                          value: english,
                                          onChanged: (val) {
                                            setState(() {
                                              english = val!;
                                            });
                                          }),
                                      Text("English"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                          value: hindi,
                                          onChanged: (val) {
                                            setState(() {
                                              hindi = val!;
                                            });
                                          }),
                                      Text("Hindi"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                          value: gujarati,
                                          onChanged: (val) {
                                            setState(() {
                                              gujarati = val!;
                                            });
                                          }),
                                      Text("Gujarati"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            CustomWidget.textdetail(text: "Nationality"),
                            Container(
                              height: 70,
                              width: 340,
                              color: primaryWhite,
                              child: TextFormField(
                                style: TextStyling.secondryLabels,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "required";
                                  }
                                },
                                onSaved: (val) {
                                  Global.nationality = val!;
                                },
                                controller: nationalityController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Indian",
                                    contentPadding:
                                        EdgeInsets.only(top: 20, left: 15)),
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 340,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  OutlinedButton(
                                    onPressed: () {
                                      dobController.clear();
                                      nationalityController.clear();
                                    },
                                    child: Text(
                                      "clear",
                                      style: TextStyling.primaryLabels,
                                    ),
                                    style: ButtonStyle(),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        if (infoDetail.currentState!
                                            .validate()) {
                                          infoDetail.currentState!.save();

                                          tost.tostedmessage(
                                              context: context,
                                              messages:
                                                  "Content information successfully....");

                                          dobController.clear();
                                          nationalityController.clear();
                                          setState(() {
                                            radioStatus = "";
                                            english = false;
                                            hindi = false;
                                            gujarati = false;
                                            Global.gender = radioStatus;
                                            if (gujarati) {
                                              Global.language.add("Gujarati");
                                            }
                                            if (english) {
                                              Global.language.add("English");
                                            }

                                            if (hindi) {
                                              Global.language.add("Hindi");
                                            }
                                          });
                                        }
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: primaryTeal,
                                        foregroundColor: primaryWhite,
                                      ),
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
