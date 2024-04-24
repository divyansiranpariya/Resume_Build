import 'package:build_resume/model/resume.dart';
import 'package:build_resume/utils/textstyling_page.dart';
import 'package:build_resume/utils/tosted_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/color.dart';
import '../utils/custome_widget.dart';
import '../utils/global.dart';

class DeclarationPage extends StatefulWidget {
  const DeclarationPage({super.key});

  @override
  State<DeclarationPage> createState() => _DeclarationPageState();
}

class _DeclarationPageState extends State<DeclarationPage> {
  GlobalKey<FormState> declarationInfo = GlobalKey();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController placeController = TextEditingController();

  bool switch1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.getAppBar(title: "Declaration", context: context),
      body: Container(
        color: Colors.grey.shade200,
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: declarationInfo,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: (switch1)
                        ? Column(
                            children: [
                              Container(
                                //  color: Colors.deepOrange,
                                height: 50,
                                width: 340,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Declaration",
                                        style: TextStyling.contentLabes,
                                      ),
                                      Switch(
                                          value: switch1,
                                          onChanged: (val) {
                                            setState(() {
                                              switch1 = val;
                                            });
                                          }),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                  height: 30,
                                  width: 340,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 30,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.ac_unit,
                                          size: 45,
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: 300,
                                child: TextFormField(
                                  controller: descriptionController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "required";
                                    }
                                  },
                                  onSaved: (val) {
                                    Global.descript = val!;
                                  },
                                  decoration: InputDecoration(
                                      hintText: "Description",
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                width: 340,
                                child: Divider(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                width: 340,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "Date",
                                          style: TextStyling.secondryLabels,
                                        ),
                                        Text(
                                          "Place (Interview",
                                          style: TextStyling.secondryLabels,
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 86),
                                      child: Text(
                                        "venue/City)",
                                        style: TextStyling.secondryLabels,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              controller: dateController,
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "required";
                                                }
                                              },
                                              onSaved: (val) {
                                                Global.date = val!;
                                              },
                                              decoration: InputDecoration(
                                                hintText: "DD/MM/YYYY",
                                                border: OutlineInputBorder(),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                              controller: placeController,
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "required";
                                                }
                                              },
                                              onSaved: (val) {
                                                Global.place = val!;
                                              },
                                              decoration: InputDecoration(
                                                hintText: "Eg.surat",
                                                border: OutlineInputBorder(),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 340,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          OutlinedButton(
                                            onPressed: () {
                                              descriptionController.clear();
                                              dateController.clear();
                                              placeController.clear();
                                            },
                                            child: Text(
                                              "clear",
                                              style: TextStyling.primaryLabels,
                                            ),
                                            style: ButtonStyle(),
                                          ),
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: primaryTeal,
                                                foregroundColor: primaryWhite,
                                              ),
                                              onPressed: () {
                                                if (declarationInfo
                                                    .currentState!
                                                    .validate()) {
                                                  declarationInfo.currentState!
                                                      .save();
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(SnackBar(
                                                    content: Text(
                                                        "saved information suceesfully.."),
                                                    behavior: SnackBarBehavior
                                                        .floating,
                                                    backgroundColor:
                                                        Colors.green,
                                                    action: SnackBarAction(
                                                      label: "Next",
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pushNamedAndRemoveUntil(
                                                                '/',
                                                                (route) =>
                                                                    false);
                                                      },
                                                    ),
                                                  ));

                                                  descriptionController.clear();
                                                  dateController.clear();
                                                  placeController.clear();
                                                  Resume resume = Resume(
                                                      gender: Global.gender,
                                                      language: Global.language,
                                                      name: Global.name,
                                                      email: Global.email,
                                                      phone: Global.phone,
                                                      address: Global.address,
                                                      profileImageFile: Global
                                                          .profileImageFile,
                                                      career: Global.career,
                                                      current: Global.current,
                                                      course: Global.course,
                                                      school: Global.school,
                                                      collage: Global.collage,
                                                      year: Global.year,
                                                      dob: Global.dob,
                                                      nationality:
                                                          Global.nationality,
                                                      company: Global.company,
                                                      schoo: Global.schoo,
                                                      role: Global.role,
                                                      joindate: Global.joindate,
                                                      exitdate: Global.exitdate,
                                                      title: Global.title,
                                                      roles: Global.roles,
                                                      technologies:
                                                          Global.technologies,
                                                      description:
                                                          Global.description,
                                                      ref: Global.ref,
                                                      desgnation:
                                                          Global.desgnation,
                                                      oraganation:
                                                          Global.oraganation,
                                                      descript: Global.descript,
                                                      date: Global.date,
                                                      place: Global.place);
                                                  Global.allresumeData
                                                      .add(resume);
                                                }
                                              },
                                              child: Text(
                                                "Save",
                                                style:
                                                    TextStyling.primaryLabels,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              Container(
                                //  color: Colors.deepOrange,
                                height: 50,
                                width: 340,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Declaration",
                                        style: TextStyling.contentLabes,
                                      ),
                                      Switch(
                                          value: switch1,
                                          onChanged: (val) {
                                            setState(() {
                                              switch1 = val;
                                            });
                                          }),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
