import 'package:build_resume/utils/tosted_message.dart';
import 'package:flutter/material.dart';
import '../utils/color.dart';
import '../utils/custome_widget.dart';
import '../utils/global.dart';
import '../utils/textstyling_page.dart';

class Carrier_Objective extends StatefulWidget {
  const Carrier_Objective({super.key});

  @override
  State<Carrier_Objective> createState() => _Carrier_ObjectiveState();
}

class _Carrier_ObjectiveState extends State<Carrier_Objective> {
  GlobalKey<FormState> objectiveInfo = GlobalKey();
  TextEditingController careerController = TextEditingController();
  TextEditingController currentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CustomWidget.getAppBar(title: "Career Objective", context: context),
      body: Container(
        color: Colors.grey.shade200,
        alignment: Alignment.topCenter,
        child: Form(
          key: objectiveInfo,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 44),
                  child: Container(
                    height: 330,
                    width: 345,
                    decoration: BoxDecoration(
                      color: primaryWhite,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 40, top: 40, bottom: 20),
                          child: Text(
                            "Career Objective ",
                            style: TextStyling.contentLabes,
                          ),
                        ),
                        Container(
                          //color: Colors.cyan,
                          height: 200,
                          width: 340,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30, right: 25),
                            child: TextFormField(
                              //clipBehavior: Clip.antiAlias,
                              style: TextStyling.contentLabes,
                              controller: careerController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "required";
                                }
                              },
                              onSaved: (val) {
                                Global.career = val!;
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Discription",
                                  contentPadding:
                                      EdgeInsets.only(top: 13, left: 15)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 53,
                ),
                Container(
                  height: 210,
                  width: 345,
                  decoration: BoxDecoration(
                    color: primaryWhite,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40, top: 40, bottom: 20),
                        child: Text(
                          "Current Designation (Expired Candidate)",
                          style: TextStyling.contentLabes,
                        ),
                      ),
                      Container(
                        //  color: Colors.cyan,
                        height: 85,
                        width: 340,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 25),
                          child: TextFormField(
                            style: TextStyling.primaryLabels,
                            controller: currentController,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "required";
                              }
                            },
                            onSaved: (val) {
                              Global.current = val!;
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Softaware Engineer",
                                contentPadding:
                                    EdgeInsets.only(top: 20, left: 15)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        careerController.clear();
                        currentController.clear();
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
                          if (objectiveInfo.currentState!.validate()) {
                            objectiveInfo.currentState!.save();

                            tost.tostedmessage(
                                context: context,
                                messages:
                                    "Content information successfully....");

                            currentController.clear();
                            careerController.clear();
                          }
                        },
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
    );
  }
}
