import 'package:build_resume/utils/textstyling_page.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart.' as pw;

import '../utils/global.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  final pw.Document pdf = pw.Document();

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   pdf.addPage(pw.Page(
  //     pageFormat: PdfPageFormat.a4,
  //     build: (context){
  //       return
  //     }
  //   ))
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 2.1,
                  color: Color(0xff00224D),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.pink,
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          // color: Colors.orange,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 15, right: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "CONTACT",
                                          style: TextStyling.pdffont,
                                        ),
                                        Text(
                                          "--------------------------------------",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        // Divider(
                                        //   color: Colors.amber,
                                        //   indent: 10,
                                        //   height: 3,
                                        // ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.person_2_outlined,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              Global.name,
                                              style: TextStyling
                                                  .pdfsmallcontentfont,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.email_outlined,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              Global.email,
                                              style: TextStyling
                                                  .pdfsmallcontentfont,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.phone_callback_outlined,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              Global.phone,
                                              style: TextStyling
                                                  .pdfsmallcontentfont,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              Global.address,
                                              style: TextStyling
                                                  .pdfsmallcontentfont,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "CAREER OBJECTIVE",
                                      style: TextStyling.pdffont,
                                    ),
                                    Text(
                                      "-------------------------------------",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          Global.career,
                                          style: TextStyling.pdfsmallfont,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      Global.current,
                                      style: TextStyling.pdfsmallfont,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "PERSONAL DETAILS",
                                          style: TextStyling.pdffont,
                                        ),
                                        Text(
                                          "-------------------------------------",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "DOB :",
                                              style: TextStyling.pdftitlefont,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              Global.dob,
                                              style: TextStyling.pdfsmallfont,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              Global.gender,
                                              style: TextStyling.pdftitlefont,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Male :",
                                              style: TextStyling.pdfsmallfont,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Languages :",
                                              style: TextStyling.pdftitlefont,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "male",
                                              style: TextStyling.pdfsmallfont,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Nationality :",
                                              style: TextStyling.pdftitlefont,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              Global.nationality,
                                              style: TextStyling.pdfsmallfont,
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "EDUCATION",
                                          style: TextStyling.pdffont,
                                        ),
                                        Text(
                                          "-------------------------------------",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          Global.course,
                                          style: TextStyling.pdftitlefont,
                                        ),
                                        Text(
                                          Global.school,
                                          style: TextStyling.pdftitlefont,
                                        ),
                                        Text(
                                          Global.collage,
                                          style: TextStyling.pdfsmallfont,
                                        ),
                                        Text(
                                          Global.year,
                                          style: TextStyling.pdfsmallfont,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
        // Add your second Container here
        // Example:
        Padding(
          padding: const EdgeInsets.only(
            top: 25,
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                ),
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 110,
                  width: 420,
                  color: Colors.grey.shade300,
                ),
              ),
              // Add your second Container here
              // Example:
              Container(
                margin: EdgeInsets.only(left: 15),
                height: 175,
                width: 175,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Row(
                children: [
                  Expanded(flex: 3, child: Container()),
                  Expanded(
                      flex: 3,
                      child: Container(
                        // color: Colors.amber,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                      //color: Colors.purple,
                                      )),
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "EXPERIENCE",
                                                  style:
                                                      TextStyling.pdfblackfont,
                                                ),
                                                SizedBox(
                                                  height: 7,
                                                ),
                                                Text(
                                                  Global.company,
                                                  style:
                                                      TextStyling.pdfgreyfont,
                                                ),
                                                Text(
                                                  Global.schoo,
                                                  style:
                                                      TextStyling.pdfgreyfont,
                                                ),
                                                Text(
                                                  Global.role,
                                                  style:
                                                      TextStyling.pdfgreyfont,
                                                ),
                                                Text(
                                                  Global.joindate,
                                                  style:
                                                      TextStyling.pdfgreyfont,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "PROJECTS",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  height: 7,
                                                ),
                                                Text(
                                                  Global.title,
                                                  style:
                                                      TextStyling.pdfgreyfont,
                                                ),
                                                Text(
                                                  "c++",
                                                  style:
                                                      TextStyling.pdfgreyfont,
                                                ),
                                                Text(
                                                  Global.roles,
                                                  style:
                                                      TextStyling.pdfgreyfont,
                                                ),
                                                Text(
                                                  Global.technologies,
                                                  style:
                                                      TextStyling.pdfgreyfont,
                                                ),
                                                Text(
                                                  Global.description,
                                                  style:
                                                      TextStyling.pdfgreyfont,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "REFRENCE",
                                                  style:
                                                      TextStyling.pdfblackfont,
                                                ),
                                                SizedBox(
                                                  height: 7,
                                                ),
                                                Text(
                                                  Global.ref,
                                                  style:
                                                      TextStyling.pdfgreyfont,
                                                ),
                                                Text(
                                                  Global.desgnation,
                                                  style:
                                                      TextStyling.pdfgreyfont,
                                                ),
                                                Text(
                                                  Global.oraganation,
                                                  style:
                                                      TextStyling.pdfgreyfont,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "TECHNICAL SKILLS",
                                                  style:
                                                      TextStyling.pdfblackfont,
                                                ),
                                                Text(
                                                  "C programinng",
                                                  style:
                                                      TextStyling.pdfgreyfont,
                                                ),
                                                Text(
                                                  "Web Technical",
                                                  style:
                                                      TextStyling.pdfgreyfont,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "INTEREST",
                                                  style:
                                                      TextStyling.pdfblackfont,
                                                ),
                                                SizedBox(
                                                  height: 7,
                                                ),
                                                Text(
                                                  "djkddk",
                                                  style:
                                                      TextStyling.pdfgreyfont,
                                                ),
                                                Text(
                                                  "dasdsa",
                                                  style:
                                                      TextStyling.pdfgreyfont,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "HOBBIES",
                                                  style:
                                                      TextStyling.pdfblackfont,
                                                ),
                                                SizedBox(
                                                  height: 7,
                                                ),
                                                Text(
                                                  "play",
                                                  style:
                                                      TextStyling.pdfgreyfont,
                                                ),
                                                Text(
                                                  "coding",
                                                  style:
                                                      TextStyling.pdfgreyfont,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Declaration",
                                                  style:
                                                      TextStyling.pdfblackfont,
                                                ),
                                                SizedBox(
                                                  height: 7,
                                                ),
                                                Text(
                                                  Global.descript,
                                                  style:
                                                      TextStyling.pdfgreyfont,
                                                ),
                                                Text(
                                                  Global.date,
                                                  style:
                                                      TextStyling.pdfgreyfont,
                                                ),
                                                Text(
                                                  Global.place,
                                                  style:
                                                      TextStyling.pdfgreyfont,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
