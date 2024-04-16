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
  GlobalKey projectinfo = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaryTeal,
        alignment: Alignment.center,
        child: Column(
          children: [
            CustomWidget.primarycontent(
                title: 'Projects',
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
                      key: projectinfo,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 9),
                            child: Text(
                              "Project Title",
                              style: TextStyling.primaryLabels,
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 340,
                            color: primaryWhite,
                            child: TextFormField(
                              //clipBehavior: Clip.antiAlias,
                              style: TextStyling.primaryLabels,
                              decoration: InputDecoration(
                                  hintText: "Resume Builder App",
                                  contentPadding:
                                      EdgeInsets.only(top: 13, left: 15)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25, bottom: 9),
                            child: Text(
                              "Roles",
                              style: TextStyling.primaryLabels,
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 340,
                            color: primaryWhite,
                            child: TextFormField(
                              style: TextStyling.primaryLabels,
                              decoration: InputDecoration(
                                  hintText:
                                      "Organize team members,Code analysis",
                                  contentPadding:
                                      EdgeInsets.only(top: 20, left: 15)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25, bottom: 9),
                            child: Text(
                              "Technologies",
                              style: TextStyling.primaryLabels,
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 340,
                            color: primaryWhite,
                            child: TextFormField(
                              style: TextStyling.primaryLabels,
                              decoration: InputDecoration(
                                  hintText: "5- Programmers",
                                  contentPadding:
                                      EdgeInsets.only(top: 25, left: 15)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25, bottom: 9),
                            child: Text(
                              "Project Description",
                              style: TextStyling.primaryLabels,
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 340,
                            color: primaryWhite,
                            child: TextFormField(
                              style: TextStyling.primaryLabels,
                              decoration: InputDecoration(
                                  hintText: "Enter Your Project Description",
                                  contentPadding:
                                      EdgeInsets.only(top: 15, left: 15)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 70),
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.white,
                              height: 50,
                              width: 200,
                              child: Text(
                                "SAVE",
                                style: TextStyling.secondaryblack,
                              ),
                            ),
                          ),
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
