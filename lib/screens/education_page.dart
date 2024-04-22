import 'package:build_resume/utils/tosted_message.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/custome_widget.dart';
import '../utils/global.dart';
import '../utils/textstyling_page.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  GlobalKey<FormState> eduinfo = GlobalKey();
  TextEditingController courese = TextEditingController();
  TextEditingController school = TextEditingController();
  TextEditingController collage = TextEditingController();
  TextEditingController year = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.getAppBar(title: "Education", context: context),
      body: Container(
        color: Colors.grey.shade200,
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 35),
                color: primaryWhite,
                child: Form(
                  key: eduinfo,
                  child: Padding(
                    padding: const EdgeInsets.all(17),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomWidget.textdetail(text: "Course/Degree"),
                        Container(
                          height: 70,
                          width: 340,
                          //color: primaryWhite,
                          child: CustomWidget.edutext(
                              hintitle: ' B.Tech Information Technology',
                              msg: 'required',
                              control: courese,
                              glb: Global.course),
                        ),
                        CustomWidget.textdetail(
                            text: "School/Collage/Institute"),
                        Container(
                          height: 70,
                          width: 340,
                          color: primaryWhite,
                          child: CustomWidget.edutext(
                              hintitle: 'marvadi Univercity',
                              msg: 'required',
                              control: school,
                              glb: Global.school),
                        ),
                        CustomWidget.textdetail(
                            text: "School/Collage/Institute"),
                        Container(
                          height: 70,
                          width: 340,
                          color: primaryWhite,
                          child: CustomWidget.edutext(
                              hintitle: '70% (or) 7.0 CGPA',
                              msg: 'required',
                              control: collage,
                              glb: Global.collage),
                        ),
                        CustomWidget.textdetail(text: "Year Of Pass"),
                        Container(
                          height: 70,
                          width: 340,
                          color: primaryWhite,
                          child: CustomWidget.edutext(
                              hintitle: '2019',
                              msg: 'required',
                              control: year,
                              glb: Global.year),
                        ),
                        Container(
                          width: 340,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              OutlinedButton(
                                onPressed: () {
                                  courese.clear();
                                  school.clear();
                                  collage.clear();
                                  year.clear();
                                },
                                child: Text(
                                  "clear",
                                  style: TextStyling.primaryLabels,
                                ),
                                style: ButtonStyle(),
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    if (eduinfo.currentState!.validate()) {
                                      eduinfo.currentState!.save();

                                      tost.tostedmessage(
                                          context: context,
                                          messages:
                                              "Content information successfully....");

                                      courese.clear();
                                      school.clear();
                                      collage.clear();
                                      year.clear();
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
