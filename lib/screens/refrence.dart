import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/custome_widget.dart';
import '../utils/textstyling_page.dart';

class ReferencePage extends StatefulWidget {
  const ReferencePage({super.key});

  @override
  State<ReferencePage> createState() => _ReferencePageState();
}

class _ReferencePageState extends State<ReferencePage> {
  GlobalKey refrenceinfo = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaryTeal,
        alignment: Alignment.center,
        child: Column(
          children: [
            CustomWidget.primarycontent(
                title: 'References',
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
                      key: refrenceinfo,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 9),
                            child: Text(
                              "Reference Name",
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
                                  hintText: "Divyanshi Ranpariya",
                                  contentPadding:
                                      EdgeInsets.only(top: 13, left: 15)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25, bottom: 9),
                            child: Text(
                              "Designation",
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
                                  hintText: "Marketing Manager,ID-342332",
                                  contentPadding:
                                      EdgeInsets.only(top: 20, left: 15)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25, bottom: 9),
                            child: Text(
                              "Oraganization/Institute",
                              style: TextStyling.primaryLabels,
                            ),
                          ),
                          Container(
                            height: 70,
                            width: 340,
                            color: primaryWhite,
                            child: TextFormField(
                              style: TextStyling.primaryLabels,
                              decoration: InputDecoration(
                                  hintText: "Green Energy Pvt.Ltd",
                                  contentPadding:
                                      EdgeInsets.only(top: 20, left: 15)),
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
