import 'package:build_resume/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/custome_widget.dart';
import '../utils/textstyling_page.dart';

class Personal_Details extends StatefulWidget {
  const Personal_Details({super.key});

  @override
  State<Personal_Details> createState() => _Personal_DetailsState();
}

class _Personal_DetailsState extends State<Personal_Details> {
  GlobalKey infoDetail = GlobalKey();
  String radioStatus = " ";
  bool hindi = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //   leading: Container(),
      //   backgroundColor: primaryTeal,
      //
      // ),
      body: Container(
        color: primaryTeal,
        alignment: Alignment.center,
        child: Column(
          children: [
            CustomWidget.primarycontent(
                title: 'personal Detail',
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
                  //color: Colors.green,
                  child: SingleChildScrollView(
                    child: Form(
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
                              //clipBehavior: Clip.antiAlias,
                              style: TextStyling.primaryLabels,
                              decoration: InputDecoration(
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
                                        value: "single",
                                        groupValue: radioStatus,
                                        onChanged: (val) {
                                          setState(() {
                                            radioStatus = val!;
                                          });
                                        }),
                                    Text(
                                      "single",
                                      style: TextStyling.secondaryblack,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                        value: "married",
                                        groupValue: radioStatus,
                                        onChanged: (val) {
                                          setState(() {
                                            radioStatus = val!;
                                          });
                                        }),
                                    Text(
                                      "married",
                                      style: TextStyling.secondaryblack,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          CustomWidget.textdetail(text: "Languages Known"),
                          // Checkbox(
                          //     value: hindi,
                          //     onChanged: (val) {
                          //       setState(() {
                          //         hindi = val!;
                          //       });
                          //     }),
                          CustomWidget.textdetail(text: "Nationality"),
                          Container(
                            height: 70,
                            width: 340,
                            color: primaryWhite,
                            child: TextFormField(
                              style: TextStyling.primaryLabels,
                              decoration: InputDecoration(
                                  hintText: "Indian",
                                  contentPadding:
                                      EdgeInsets.only(top: 20, left: 15)),
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
