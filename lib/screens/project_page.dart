import 'package:build_resume/utils/global.dart';
import 'package:build_resume/utils/tosted_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/custome_widget.dart';
import '../utils/textstyling_page.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  GlobalKey<FormState> projectinfo = GlobalKey();
  TextEditingController projectController = TextEditingController();
  TextEditingController roleController = TextEditingController();
  TextEditingController technoController = TextEditingController();
  TextEditingController prodescriptionController = TextEditingController();
  bool c = false;
  bool cAdvance = false;
  bool flutter = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.getAppBar(title: "Projects", context: context),
      body: Container(
        color: Colors.grey.shade200,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 35, right: 22, left: 22),
                color: primaryWhite,
                child: SingleChildScrollView(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 25, right: 25),
                    child: Form(
                      key: projectinfo,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomWidget.textdetail(text: "Project Title"),
                          Container(
                            height: 60,
                            width: 340,
                            color: primaryWhite,
                            child: TextFormField(
                              controller: projectController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "required";
                                }
                              },
                              onSaved: (val) {
                                Global.title = val!;
                              },
                              style: TextStyling.secondryLabels,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Resume Builder App",
                                  contentPadding:
                                      EdgeInsets.only(top: 13, left: 15)),
                            ),
                          ),
                          CustomWidget.textdetail(text: "Technpologies"),
                          Container(
                            height: 145,
                            width: 340,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                        value: c,
                                        onChanged: (val) {
                                          setState(() {
                                            c = val!;
                                          });
                                        }),
                                    Text(
                                      "C Programming",
                                      style: TextStyling.pagelabel,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                        value: cAdvance,
                                        onChanged: (val) {
                                          setState(() {
                                            cAdvance = val!;
                                          });
                                        }),
                                    Text(
                                      "C++",
                                      style: TextStyling.pagelabel,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                        value: flutter,
                                        onChanged: (val) {
                                          setState(() {
                                            flutter = val!;
                                          });
                                        }),
                                    Text(
                                      "Flutter",
                                      style: TextStyling.pagelabel,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          CustomWidget.textdetail(text: "Roles"),
                          Container(
                            height: 60,
                            width: 340,
                            color: primaryWhite,
                            child: TextFormField(
                              controller: roleController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "required";
                                }
                              },
                              onSaved: (val) {
                                Global.roles = val!;
                              },
                              style: TextStyling.secondryLabels,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText:
                                      "Organize team members,Code analysis",
                                  contentPadding:
                                      EdgeInsets.only(top: 20, left: 15)),
                            ),
                          ),
                          CustomWidget.textdetail(text: "Technologies"),
                          Container(
                            height: 69,
                            width: 340,
                            color: primaryWhite,
                            child: TextFormField(
                              controller: technoController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "required";
                                }
                              },
                              onSaved: (val) {
                                Global.technologies = val!;
                              },
                              style: TextStyling.secondryLabels,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "5- Programmers",
                                  contentPadding:
                                      EdgeInsets.only(top: 25, left: 15)),
                            ),
                          ),
                          CustomWidget.textdetail(text: "Project Description"),
                          Container(
                            height: 60,
                            width: 340,
                            color: primaryWhite,
                            child: TextFormField(
                              controller: prodescriptionController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "required";
                                }
                              },
                              onSaved: (val) {
                                Global.description = val!;
                              },
                              style: TextStyling.secondryLabels,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Enter Your Project Description",
                                  contentPadding:
                                      EdgeInsets.only(top: 15, left: 15)),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 340,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                OutlinedButton(
                                  onPressed: () {
                                    projectController.clear();
                                    roleController.clear();
                                    technoController.clear();
                                    prodescriptionController.clear();
                                  },
                                  child: Text(
                                    "clear",
                                    style: TextStyling.primaryLabels,
                                  ),
                                  style: ButtonStyle(),
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      if (projectinfo.currentState!
                                          .validate()) {
                                        projectinfo.currentState!.save();

                                        tost.tostedmessage(
                                            context: context,
                                            messages:
                                                "Content information successfully....");

                                        projectController.clear();
                                        roleController.clear();
                                        technoController.clear();
                                        prodescriptionController.clear();
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
