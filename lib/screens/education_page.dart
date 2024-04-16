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
      body: Container(
        color: primaryTeal,
        alignment: Alignment.center,
        child: Column(
          children: [
            CustomWidget.primarycontent(
                title: 'Education',
                icon: Icon(
                  Icons.account_circle_outlined,
                  size: 100,
                )),
            SizedBox(
              height: 5,
            ),
            Expanded(
                flex: 5,
                child: Container(
                  //   color: Colors.green,
                  child: SingleChildScrollView(
                    child: Form(
                      key: eduinfo,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 9),
                            child: Text(
                              "Course/Degree",
                              style: TextStyling.primaryLabels,
                            ),
                          ),
                          Container(
                            height: 70,
                            width: 340,
                            color: primaryWhite,
                            child: CustomWidget.edutext(
                                hintitle: ' B.Tech Information Technology',
                                msg: 'required',
                                control: courese,
                                glb: Global.course),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25, bottom: 9),
                            child: Text(
                              "School/Collage/Institute",
                              style: TextStyling.primaryLabels,
                            ),
                          ),
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
                          Padding(
                            padding: const EdgeInsets.only(top: 25, bottom: 9),
                            child: Text(
                              "School/Collage/Institute",
                              style: TextStyling.primaryLabels,
                            ),
                          ),
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
                          Padding(
                            padding: const EdgeInsets.only(top: 25, bottom: 9),
                            child: Text(
                              "Year of Pass",
                              style: TextStyling.primaryLabels,
                            ),
                          ),
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
                          Padding(
                            padding: const EdgeInsets.only(left: 135, top: 15),
                            child: Transform.scale(
                              scale: 1.2,
                              child: FloatingActionButton(
                                onPressed: () {
                                  if (eduinfo.currentState!.validate()) {
                                    eduinfo.currentState!.save();

                                    // tost.tostedmessage(
                                    //     context: context,
                                    //     messages:
                                    //     "Content information successfully....");

                                    courese.clear();
                                    school.clear();
                                    collage.clear();
                                    year.clear();
                                  }
                                },
                                child: Text(
                                  "save",
                                  style: TextStyling.secondaryblack,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
