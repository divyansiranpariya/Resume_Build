import 'package:build_resume/utils/tosted_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/color.dart';
import '../utils/custome_widget.dart';
import '../utils/global.dart';
import '../utils/textstyling_page.dart';

class Experience_Page extends StatefulWidget {
  const Experience_Page({super.key});

  @override
  State<Experience_Page> createState() => _Experience_PageState();
}

class _Experience_PageState extends State<Experience_Page> {
  GlobalKey<FormState> exeperienceinfo = GlobalKey();
  String radioStatus = " ";
  TextEditingController companyController = TextEditingController();
  TextEditingController schoolController = TextEditingController();
  TextEditingController rolesController = TextEditingController();
  TextEditingController dateJoinedController = TextEditingController();
  TextEditingController dateExitController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.getAppBar(title: "Experience", context: context),
      body: Container(
        color: Colors.grey.shade200,
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Form(
              key: exeperienceinfo,
              child: Column(
                children: [
                  Container(
                    width: 360,
                    height: 740,
                    color: primaryWhite,
                    child: Padding(
                      padding: const EdgeInsets.all(17),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomWidget.textdetail(text: "Company Name"),
                          Container(
                            height: 60,
                            width: 340,
                            color: primaryWhite,
                            child: TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "required";
                                }
                              },
                              onSaved: (val) {
                                Global.company = val!;
                              },
                              controller: companyController,
                              style: TextStyling.primaryLabels,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "New Enterprise,San Fraciso",
                                  contentPadding:
                                      EdgeInsets.only(top: 13, left: 15)),
                            ),
                          ),
                          CustomWidget.textdetail(
                              text: "School/Collage/Institute"),
                          Container(
                            height: 60,
                            width: 340,
                            color: primaryWhite,
                            child: TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "required";
                                }
                              },
                              onSaved: (val) {
                                Global.school = val!;
                              },
                              controller: schoolController,
                              style: TextStyling.primaryLabels,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Quality Test Engineer",
                                  contentPadding:
                                      EdgeInsets.only(top: 20, left: 15)),
                            ),
                          ),
                          CustomWidget.textdetail(text: "Roles (optional)"),
                          Container(
                            height: 100,
                            width: 340,
                            color: primaryWhite,
                            child: TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "required";
                                }
                              },
                              onSaved: (val) {
                                Global.roles = val!;
                              },
                              controller: rolesController,
                              style: TextStyling.primaryLabels,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText:
                                      "Working with team members to come up with new Concept and product analysis...",
                                  contentPadding:
                                      EdgeInsets.only(top: 25, left: 15)),
                            ),
                          ),
                          CustomWidget.textdetail(text: "Employed Status"),
                          Container(
                            height: 50,
                            width: 340,
                            color: Colors.white,
                            child: Row(
                              children: [
                                Radio(
                                    value: "Previously Employed",
                                    groupValue: radioStatus,
                                    onChanged: (val) {
                                      setState(() {
                                        radioStatus = "previous";
                                      });
                                    }),
                                Text(
                                  "Previously Employed",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Radio(
                                    value: "Currenty Employed",
                                    groupValue: radioStatus,
                                    onChanged: (val) {
                                      setState(() {
                                        radioStatus = "current";
                                      });
                                    }),
                                Expanded(
                                  child: Text(
                                    "Currenty Employed",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              height: 20,
                              width: 340,
                              child: Divider(
                                color: Colors.black,
                              )),
                          SizedBox(
                            height: 15,
                          ),
                          if (radioStatus == "previous")
                            Container(
                              alignment: Alignment.topCenter,
                              height: 120,
                              width: 340,

                              // color: Colors.white,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "Date Joined",
                                        style: TextStyling.contentLabes,
                                      ),
                                      Text(
                                        "Date Exit",
                                        style: TextStyling.contentLabes,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "required";
                                            }
                                          },
                                          onSaved: (val) {
                                            Global.joindate = val!;
                                          },
                                          controller: dateJoinedController,
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
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "required";
                                            }
                                          },
                                          onSaved: (val) {
                                            Global.exitdate = val!;
                                          },
                                          controller: dateExitController,
                                          decoration: InputDecoration(
                                            hintText: "DD/MM/YYYY",
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          else if (radioStatus == "current")
                            Container(
                              alignment: Alignment.topCenter,
                              height: 200,
                              width: 150,
                              // color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Date Joined",
                                    style: TextStyling.secondaryblack,
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "DD/MM/YYYY",
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          companyController.clear();
                          schoolController.clear();
                          rolesController.clear();
                          dateExitController.clear();
                          dateJoinedController.clear();
                        },
                        child: Text(
                          "clear",
                          style: TextStyling.primaryLabels,
                        ),
                        style: ButtonStyle(),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (exeperienceinfo.currentState!.validate()) {
                              exeperienceinfo.currentState!.save();

                              tost.tostedmessage(
                                  context: context,
                                  messages:
                                      "Content information successfully....");

                              companyController.clear();
                              schoolController.clear();
                              rolesController.clear();
                              dateExitController.clear();
                              dateJoinedController.clear();
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
