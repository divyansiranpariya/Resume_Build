import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/custome_widget.dart';
import '../utils/textstyling_page.dart';

class Experience_Page extends StatefulWidget {
  const Experience_Page({super.key});

  @override
  State<Experience_Page> createState() => _Experience_PageState();
}

class _Experience_PageState extends State<Experience_Page> {
  GlobalKey exeperienceinfo = GlobalKey();
  String radioStatus = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaryTeal,
        alignment: Alignment.center,
        child: Column(
          children: [
            CustomWidget.primarycontent(
                title: 'Exeperience',
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
                      key: exeperienceinfo,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomWidget.textdetail(text: "Company Name"),
                          Container(
                            height: 60,
                            width: 340,
                            color: primaryWhite,
                            child: TextFormField(
                              //clipBehavior: Clip.antiAlias,
                              style: TextStyling.primaryLabels,
                              decoration: InputDecoration(
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
                              style: TextStyling.primaryLabels,
                              decoration: InputDecoration(
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
                              style: TextStyling.primaryLabels,
                              decoration: InputDecoration(
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
                                        radioStatus = val!;
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
                                        radioStatus = val!;
                                      });
                                    }),
                                Text(
                                  "Currenty Employed",
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 340,
                            height: 70,
                            color: Colors.purple,
                            child: Row(
                              children: [
                                CustomWidget.textdetail(text: "Date Joined"),
                                Column(
                                  children: [
                                    // TextFormField(
                                    //   decoration: InputDecoration(
                                    //     hintText: "DD/MM/YYYY",
                                    //   ),
                                    // ),
                                  ],
                                ),
                                CustomWidget.textdetail(text: "Date Exit"),
                              ],
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
