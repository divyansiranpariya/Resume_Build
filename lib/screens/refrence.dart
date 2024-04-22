import 'package:build_resume/utils/tosted_message.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/custome_widget.dart';
import '../utils/global.dart';
import '../utils/textstyling_page.dart';

class ReferencePage extends StatefulWidget {
  const ReferencePage({super.key});

  @override
  State<ReferencePage> createState() => _ReferencePageState();
}

class _ReferencePageState extends State<ReferencePage> {
  GlobalKey<FormState> refrenceinfo = GlobalKey();
  TextEditingController refController = TextEditingController();
  TextEditingController designationController = TextEditingController();
  TextEditingController organizationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.getAppBar(title: "Reference", context: context),
      body: Container(
        color: Colors.grey.shade200,
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 35, right: 22, left: 22),
                color: primaryWhite,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
                  child: Form(
                    key: refrenceinfo,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomWidget.textdetail(text: "Reference Name"),
                        Container(
                          height: 60,
                          width: 340,
                          color: primaryWhite,
                          child: TextFormField(
                            //clipBehavior: Clip.antiAlias,
                            style: TextStyling.secondaryblack,
                            controller: refController,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "required";
                              }
                            },
                            onSaved: (val) {
                              Global.ref = val!;
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Divyanshi Ranpariya",
                                contentPadding:
                                    EdgeInsets.only(top: 13, left: 15)),
                          ),
                        ),
                        CustomWidget.textdetail(text: "Designation"),
                        Container(
                          height: 60,
                          width: 340,
                          color: primaryWhite,
                          child: TextFormField(
                            style: TextStyling.secondaryblack,
                            controller: designationController,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "required";
                              }
                            },
                            onSaved: (val) {
                              Global.desgnation = val!;
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Marketing Manager,ID-342332",
                                contentPadding:
                                    EdgeInsets.only(top: 20, left: 15)),
                          ),
                        ),
                        CustomWidget.textdetail(text: "Organization/Institute"),
                        Container(
                          height: 70,
                          width: 340,
                          color: primaryWhite,
                          child: TextFormField(
                            controller: organizationController,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "required";
                              }
                            },
                            onSaved: (val) {
                              Global.oraganation = val!;
                            },
                            style: TextStyling.secondryLabels,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Green Energy Pvt.Ltd",
                                contentPadding:
                                    EdgeInsets.only(top: 20, left: 15)),
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
                                  refController.clear();
                                  designationController.clear();
                                  organizationController.clear();
                                },
                                child: Text(
                                  "clear",
                                  style: TextStyling.primaryLabels,
                                ),
                                style: ButtonStyle(),
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    if (refrenceinfo.currentState!.validate()) {
                                      refrenceinfo.currentState!.save();

                                      tost.tostedmessage(
                                          context: context,
                                          messages:
                                              "Content information successfully....");

                                      refController.clear();
                                      designationController.clear();
                                      organizationController.clear();
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
            ],
          ),
        ),
      ),
    );
  }
}
