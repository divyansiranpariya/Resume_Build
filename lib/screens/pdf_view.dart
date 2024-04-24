import 'dart:io';

import 'package:build_resume/utils/textstyling_page.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
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
  void initState() {
    // TODO: implement initState
    super.initState();
    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Container(
            height: 900,
            width: 410,
            decoration: pw.BoxDecoration(boxShadow: <pw.BoxShadow>[
              pw.BoxShadow(
                  spreadRadius: 2, blurRadius: 3, color: PdfColors.grey),
            ]),
            child: pw.Stack(
              children: [
                pw.Column(
                  children: [
                    pw.Container(
                        height: 700,
                        width: 185,
                        color: PdfColors.blueGrey,
                        child: pw.Column(
                          children: [
                            pw.Expanded(
                              child: pw.Container(
                                  //color: Colors.pink,
                                  ),
                            ),
                            pw.Expanded(
                              flex: 6,
                              child: pw.Container(
                                // color: Colors.orange,
                                child: pw.Padding(
                                  padding: pw.EdgeInsets.only(
                                      top: 10, left: 15, right: 10),
                                  child: pw.Column(
                                    mainAxisAlignment:
                                        pw.MainAxisAlignment.spaceAround,
                                    children: [
                                      pw.Row(
                                        children: [
                                          pw.Column(
                                            crossAxisAlignment:
                                                pw.CrossAxisAlignment.start,
                                            children: [
                                              pw.Padding(
                                                padding:
                                                    const pw.EdgeInsets.only(
                                                        top: 20),
                                                child: pw.Text(
                                                  "CONTACT",
                                                  style: TextStyling.pdffont,
                                                ),
                                              ),

                                              pw.Text(
                                                "--------------------------------------",
                                                style: pw.TextStyle(
                                                    color: PdfColors.white),
                                              ),
                                              // Divider(
                                              //   color: Colors.amber,
                                              //   indent: 10,
                                              //   height: 3,
                                              // ),
                                              pw.Row(
                                                children: [
                                                  // pw.Icon(
                                                  //   // Icons.person_2_outlined,
                                                  //   // color: PdfColors.white,
                                                  //   // size: 20,
                                                  // ),
                                                  pw.SizedBox(
                                                    width: 10,
                                                  ),
                                                  pw.Text(
                                                    Global.name,
                                                    style: TextStyling
                                                        .pdfsmallcontentfont,
                                                  ),
                                                ],
                                              ),
                                              pw.Row(
                                                children: [
                                                  // pw.Icon(
                                                  //   // Icons.add,
                                                  //   color: PdfColors.white,
                                                  //   size: 20,
                                                  // ),
                                                  pw.SizedBox(
                                                    width: 10,
                                                  ),
                                                  pw.Text(
                                                    Global.email,
                                                    style: TextStyling
                                                        .pdfsmallcontentfont,
                                                  ),
                                                ],
                                              ),
                                              pw.Row(
                                                children: [
                                                  // pw.Icon(
                                                  //   pw.IconData(0xe047),
                                                  //   size: 20,
                                                  //   color: PdfColors.white,
                                                  // ),
                                                  pw.SizedBox(
                                                    width: 10,
                                                  ),
                                                  pw.Text(
                                                    Global.phone,
                                                    style: TextStyling
                                                        .pdfsmallcontentfont,
                                                  ),
                                                ],
                                              ),
                                              pw.Row(
                                                children: [
                                                  // pw.Icon(
                                                  //   Icons.location_on_outlined,
                                                  //   size: 20,
                                                  //   color: PdfColors.white,
                                                  // ),
                                                  pw.SizedBox(
                                                    width: 10,
                                                  ),
                                                  pw.Text(
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
                                      pw.Column(
                                        crossAxisAlignment:
                                            pw.CrossAxisAlignment.start,
                                        children: [
                                          pw.Text(
                                            "CAREER OBJECTIVE",
                                            style: TextStyling.pdffont,
                                          ),
                                          pw.Text(
                                            "-------------------------------------",
                                            style: pw.TextStyle(
                                                color: PdfColors.white),
                                          ),
                                          pw.Column(
                                            children: [
                                              pw.Text(
                                                Global.career,
                                                style: TextStyling.pdfsmallfont,
                                              ),
                                            ],
                                          ),
                                          pw.Text(
                                            Global.current,
                                            style: TextStyling.pdfsmallfont,
                                          )
                                        ],
                                      ),
                                      pw.Row(
                                        children: [
                                          pw.Column(
                                            crossAxisAlignment:
                                                pw.CrossAxisAlignment.start,
                                            children: [
                                              pw.Text(
                                                "PERSONAL DETAILS",
                                                style: TextStyling.pdffont,
                                              ),
                                              pw.Text(
                                                "-------------------------------------",
                                                style: pw.TextStyle(
                                                    color: PdfColors.white),
                                              ),
                                              pw.Row(
                                                crossAxisAlignment:
                                                    pw.CrossAxisAlignment.start,
                                                children: [
                                                  pw.Text(
                                                    "DOB :",
                                                    style: TextStyling
                                                        .pdftitlefont,
                                                  ),
                                                  pw.SizedBox(
                                                    width: 10,
                                                  ),
                                                  pw.Text(
                                                    Global.dob,
                                                    style: TextStyling
                                                        .pdfsmallfont,
                                                  ),
                                                ],
                                              ),
                                              pw.Row(
                                                crossAxisAlignment:
                                                    pw.CrossAxisAlignment.start,
                                                children: [
                                                  pw.Text(
                                                    "Gender",
                                                    style: TextStyling
                                                        .pdftitlefont,
                                                  ),
                                                  pw.SizedBox(
                                                    width: 10,
                                                  ),
                                                  pw.Text(
                                                    "Male",
                                                    style: TextStyling
                                                        .pdfsmallfont,
                                                  ),
                                                ],
                                              ),
                                              pw.Row(
                                                crossAxisAlignment:
                                                    pw.CrossAxisAlignment.start,
                                                children: [
                                                  pw.Text(
                                                    "Languages :",
                                                    style: TextStyling
                                                        .pdftitlefont,
                                                  ),
                                                  pw.SizedBox(
                                                    width: 10,
                                                  ),
                                                  pw.Text(
                                                    "English",
                                                    style: TextStyling
                                                        .pdfsmallfont,
                                                  ),
                                                ],
                                              ),
                                              pw.Row(
                                                crossAxisAlignment:
                                                    pw.CrossAxisAlignment.start,
                                                children: [
                                                  pw.Text(
                                                    "Nationality :",
                                                    style: TextStyling
                                                        .pdftitlefont,
                                                  ),
                                                  pw.SizedBox(
                                                    width: 10,
                                                  ),
                                                  pw.Text(
                                                    Global.nationality,
                                                    style: TextStyling
                                                        .pdfsmallfont,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      pw.Row(
                                        children: [
                                          pw.Column(
                                            crossAxisAlignment:
                                                pw.CrossAxisAlignment.start,
                                            children: [
                                              pw.Text(
                                                "EDUCATION",
                                                style: TextStyling.pdffont,
                                              ),
                                              pw.Text(
                                                "-------------------------------------",
                                                style: pw.TextStyle(
                                                    color: PdfColors.white),
                                              ),
                                              pw.Text(
                                                Global.course,
                                                style: TextStyling.pdftitlefont,
                                              ),
                                              pw.Text(
                                                Global.school,
                                                style: TextStyling.pdftitlefont,
                                              ),
                                              pw.Text(
                                                Global.collage,
                                                style: TextStyling.pdfsmallfont,
                                              ),
                                              pw.Text(
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
                            ),
                          ],
                        )),
                  ],
                ),
                // Add your second Container here
                // Example:
                pw.Stack(
                  children: [
                    pw.Padding(
                      padding: const pw.EdgeInsets.only(
                        top: 40,
                      ),
                      child: pw.Container(
                        alignment: pw.Alignment.centerLeft,
                        height: 110,
                        width: 420,
                        color: PdfColors.grey,
                      ),
                    ),
                    // Add your second Container here
                    // Example:
                    pw.Container(
                      margin: pw.EdgeInsets.only(left: 15, top: 20),
                      height: 175,
                      width: 175,
                      decoration: pw.BoxDecoration(
                        color: PdfColors.white,
                        shape: pw.BoxShape.circle,
                        // image: pw.DecorationImage(
                        //   image: pw.MemoryImage(
                        //     Global.selectedResum e!.profileImageFile!
                        //         .readAsBytesSync(),
                        //   ),
                        // )
                      ),
                    ),
                    pw.Row(
                      children: [
                        pw.Expanded(flex: 3, child: pw.Container()),
                        pw.Expanded(
                            flex: 3,
                            child: pw.Container(
                              //color: PdfColors.amber,
                              child: pw.Padding(
                                padding: const pw.EdgeInsets.only(left: 10),
                                child: pw.Column(
                                  children: [
                                    pw.Expanded(
                                        flex: 1,
                                        child: pw.Container(
                                            //color: Colors.purple,
                                            )),
                                    pw.Expanded(
                                        flex: 4,
                                        child: pw.Container(
                                          child: pw.Column(
                                            mainAxisAlignment: pw
                                                .MainAxisAlignment.spaceAround,
                                            children: [
                                              pw.Row(
                                                children: [
                                                  pw.Column(
                                                    crossAxisAlignment: pw
                                                        .CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      pw.Text(
                                                        "EXPERIENCE",
                                                        style: TextStyling
                                                            .pdfblackfont,
                                                      ),
                                                      pw.SizedBox(
                                                        height: 7,
                                                      ),
                                                      pw.Text(
                                                        Global.company,
                                                        style: TextStyling
                                                            .pdfgreyfont,
                                                      ),
                                                      pw.Text(
                                                        Global.schoo,
                                                        style: TextStyling
                                                            .pdfgreyfont,
                                                      ),
                                                      pw.Text(
                                                        Global.role,
                                                        style: TextStyling
                                                            .pdfgreyfont,
                                                      ),
                                                      pw.Text(
                                                        Global.joindate,
                                                        style: TextStyling
                                                            .pdfgreyfont,
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              pw.Row(
                                                children: [
                                                  pw.Column(
                                                    crossAxisAlignment: pw
                                                        .CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      pw.Text(
                                                        "PROJECTS",
                                                        style: pw.TextStyle(
                                                            fontSize: 16,
                                                            fontWeight: pw
                                                                .FontWeight
                                                                .bold),
                                                      ),
                                                      pw.SizedBox(
                                                        height: 7,
                                                      ),
                                                      pw.Text(
                                                        Global.title,
                                                        style: TextStyling
                                                            .pdfgreyfont,
                                                      ),
                                                      pw.Text(
                                                        "c++",
                                                        style: TextStyling
                                                            .pdfgreyfont,
                                                      ),
                                                      pw.Text(
                                                        Global.roles,
                                                        style: TextStyling
                                                            .pdfgreyfont,
                                                      ),
                                                      pw.Text(
                                                        Global.technologies,
                                                        style: TextStyling
                                                            .pdfgreyfont,
                                                      ),
                                                      pw.Text(
                                                        Global.description,
                                                        style: TextStyling
                                                            .pdfgreyfont,
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              pw.Row(
                                                children: [
                                                  pw.Column(
                                                    crossAxisAlignment: pw
                                                        .CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      pw.Text(
                                                        "REFRENCE",
                                                        style: TextStyling
                                                            .pdfblackfont,
                                                      ),
                                                      pw.SizedBox(
                                                        height: 7,
                                                      ),
                                                      pw.Text(
                                                        Global.ref,
                                                        style: TextStyling
                                                            .pdfgreyfont,
                                                      ),
                                                      pw.Text(
                                                        Global.desgnation,
                                                        style: TextStyling
                                                            .pdfgreyfont,
                                                      ),
                                                      pw.Text(
                                                        Global.oraganation,
                                                        style: TextStyling
                                                            .pdfgreyfont,
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              pw.Row(
                                                children: [
                                                  pw.Column(
                                                    crossAxisAlignment: pw
                                                        .CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      pw.Text(
                                                        "TECHNICAL SKILLS",
                                                        style: TextStyling
                                                            .pdfblackfont,
                                                      ),
                                                      pw.Text(
                                                        "C programinng",
                                                        style: TextStyling
                                                            .pdfgreyfont,
                                                      ),
                                                      pw.Text(
                                                        "Web Technical",
                                                        style: TextStyling
                                                            .pdfgreyfont,
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              pw.Row(
                                                children: [
                                                  pw.Column(
                                                    crossAxisAlignment: pw
                                                        .CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      pw.Text(
                                                        "INTEREST",
                                                        style: TextStyling
                                                            .pdfblackfont,
                                                      ),
                                                      pw.SizedBox(
                                                        height: 7,
                                                      ),
                                                      pw.Text(
                                                        "djkddk",
                                                        style: TextStyling
                                                            .pdfgreyfont,
                                                      ),
                                                      pw.Text(
                                                        "dasdsa",
                                                        style: TextStyling
                                                            .pdfgreyfont,
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              pw.Row(
                                                children: [
                                                  pw.Column(
                                                    crossAxisAlignment: pw
                                                        .CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      pw.Text(
                                                        "HOBBIES",
                                                        style: TextStyling
                                                            .pdfblackfont,
                                                      ),
                                                      pw.SizedBox(
                                                        height: 7,
                                                      ),
                                                      pw.Text(
                                                        "play",
                                                        style: TextStyling
                                                            .pdfgreyfont,
                                                      ),
                                                      pw.Text(
                                                        "coding",
                                                        style: TextStyling
                                                            .pdfgreyfont,
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              pw.Row(
                                                children: [
                                                  pw.Column(
                                                    crossAxisAlignment: pw
                                                        .CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      pw.Text(
                                                        "Declaration",
                                                        style: TextStyling
                                                            .pdfblackfont,
                                                      ),
                                                      pw.SizedBox(
                                                        height: 7,
                                                      ),
                                                      pw.Text(
                                                        Global.descript,
                                                        style: TextStyling
                                                            .pdfgreyfont,
                                                      ),
                                                      pw.Text(
                                                        Global.date,
                                                        style: TextStyling
                                                            .pdfgreyfont,
                                                      ),
                                                      pw.Text(
                                                        Global.place,
                                                        style: TextStyling
                                                            .pdfgreyfont,
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
              ],
            ),
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900,
        width: 450,
        decoration: BoxDecoration(boxShadow: <BoxShadow>[
          BoxShadow(spreadRadius: 2, blurRadius: 3, color: Colors.grey),
        ]),
        // color: Colors.pink,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      height: 900,
                      width: 185,
                      color: Color(0xff00224D),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                                //color: Colors.pink,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20),
                                              child: Text(
                                                "CONTACT",
                                                style: TextStyling.pdffonts,
                                              ),
                                            ),
                                            Text(
                                              "--------------------------------------",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            // Divider(
                                            //   color: Colors.amber,
                                            //   indent: 10,
                                            //   height: 3,
                                            // ),
                                            Row(
                                              children: [
                                                // Icon(
                                                //   Icons.person_2_outlined,
                                                //   color: Colors.white,
                                                //   size: 20,
                                                // ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  Global.name,
                                                  style: TextStyling
                                                      .pdfsmallcontentfonts,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                // Icon(
                                                //   Icons.email_outlined,
                                                //   color: Colors.white,
                                                //   size: 20,
                                                // ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  Global.email,
                                                  style: TextStyling
                                                      .pdfsmallcontentfonts,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                // Icon(
                                                //   Icons.phone_callback_outlined,
                                                //   size: 20,
                                                //   color: Colors.white,
                                                // ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  Global.phone,
                                                  style: TextStyling
                                                      .pdfsmallcontentfonts,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                // Icon(
                                                //   Icons.location_on_outlined,
                                                //   size: 20,
                                                //   color: Colors.white,
                                                // ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  Global.address,
                                                  style: TextStyling
                                                      .pdfsmallcontentfonts,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "CAREER OBJECTIVE",
                                          style: TextStyling.pdffonts,
                                        ),
                                        Text(
                                          "-------------------------------------",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              Global.career,
                                              style: TextStyling.pdfsmallfonts,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          Global.current,
                                          style: TextStyling.pdfsmallfonts,
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
                                              style: TextStyling.pdffonts,
                                            ),
                                            Text(
                                              "-------------------------------------",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "DOB :",
                                                  style:
                                                      TextStyling.pdftitlefonts,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  Global.dob,
                                                  style:
                                                      TextStyling.pdfsmallfonts,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Gender :",
                                                  style:
                                                      TextStyling.pdftitlefonts,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "Male",
                                                  style:
                                                      TextStyling.pdfsmallfonts,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Languages :",
                                                  style:
                                                      TextStyling.pdftitlefonts,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "English",
                                                  style:
                                                      TextStyling.pdfsmallfonts,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Nationality :",
                                                  style:
                                                      TextStyling.pdftitlefonts,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  Global.nationality,
                                                  style:
                                                      TextStyling.pdfsmallfonts,
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
                                              style: TextStyling.pdffonts,
                                            ),
                                            Text(
                                              "-------------------------------------",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              Global.course,
                                              style: TextStyling.pdftitlefonts,
                                            ),
                                            Text(
                                              Global.school,
                                              style: TextStyling.pdftitlefonts,
                                            ),
                                            Text(
                                              Global.collage,
                                              style: TextStyling.pdfsmallfonts,
                                            ),
                                            Text(
                                              Global.year,
                                              style: TextStyling.pdfsmallfonts,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            // Add your second Container here
            // Example:
            Stack(
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
                    // image: DecorationImage(
                    //   image:
                    //       FileImage(Global.selectedResume!.profileImageFile!),
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(flex: 3, child: Container()),
                    Expanded(
                        flex: 4,
                        child: Container(
                          // color: Colors.amber,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      color: Colors.purple,
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
                                                    style: TextStyling
                                                        .pdfblackfonts,
                                                  ),
                                                  SizedBox(
                                                    height: 7,
                                                  ),
                                                  Text(
                                                    Global.company,
                                                    style: TextStyling
                                                        .pdfgreyfonts,
                                                  ),
                                                  Text(
                                                    Global.schoo,
                                                    style: TextStyling
                                                        .pdfgreyfonts,
                                                  ),
                                                  Text(
                                                    Global.role,
                                                    style: TextStyling
                                                        .pdfgreyfonts,
                                                  ),
                                                  Text(
                                                    Global.joindate,
                                                    style: TextStyling
                                                        .pdfgreyfonts,
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
                                                    style: TextStyling
                                                        .pdfgreyfonts,
                                                  ),
                                                  Text(
                                                    "c++",
                                                    style: TextStyling
                                                        .pdfgreyfonts,
                                                  ),
                                                  Text(
                                                    Global.roles,
                                                    style: TextStyling
                                                        .pdfgreyfonts,
                                                  ),
                                                  Text(
                                                    Global.technologies,
                                                    style: TextStyling
                                                        .pdfgreyfonts,
                                                  ),
                                                  Text(
                                                    Global.description,
                                                    style: TextStyling
                                                        .pdfgreyfonts,
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
                                                    style: TextStyling
                                                        .pdfblackfonts,
                                                  ),
                                                  SizedBox(
                                                    height: 7,
                                                  ),
                                                  Text(
                                                    Global.ref,
                                                    style: TextStyling
                                                        .pdfgreyfonts,
                                                  ),
                                                  Text(
                                                    Global.desgnation,
                                                    style: TextStyling
                                                        .pdfgreyfonts,
                                                  ),
                                                  Text(
                                                    Global.oraganation,
                                                    style: TextStyling
                                                        .pdfgreyfonts,
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
                                                    style: TextStyling
                                                        .pdfblackfonts,
                                                  ),
                                                  Text(
                                                    "C programinng",
                                                    style: TextStyling
                                                        .pdfgreyfonts,
                                                  ),
                                                  Text(
                                                    "Web Technical",
                                                    style: TextStyling
                                                        .pdfgreyfonts,
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
                                                    style: TextStyling
                                                        .pdfblackfonts,
                                                  ),
                                                  SizedBox(
                                                    height: 7,
                                                  ),
                                                  Text(
                                                    "djkddk",
                                                    style: TextStyling
                                                        .pdfgreyfonts,
                                                  ),
                                                  Text(
                                                    "dasdsa",
                                                    style: TextStyling
                                                        .pdfgreyfonts,
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
                                                    style: TextStyling
                                                        .pdfblackfonts,
                                                  ),
                                                  SizedBox(
                                                    height: 7,
                                                  ),
                                                  Text(
                                                    "play",
                                                    style: TextStyling
                                                        .pdfgreyfonts,
                                                  ),
                                                  Text(
                                                    "coding",
                                                    style: TextStyling
                                                        .pdfgreyfonts,
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
                                                    style: TextStyling
                                                        .pdfblackfonts,
                                                  ),
                                                  SizedBox(
                                                    height: 7,
                                                  ),
                                                  Text(
                                                    Global.descript,
                                                    style: TextStyling
                                                        .pdfgreyfonts,
                                                  ),
                                                  Text(
                                                    Global.date,
                                                    style: TextStyling
                                                        .pdfgreyfonts,
                                                  ),
                                                  Text(
                                                    Global.place,
                                                    style: TextStyling
                                                        .pdfgreyfonts,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),

                                          // Icon(Icons.download_for_offline),
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final Directory? directory = await getExternalStorageDirectory();

          // final File file = File("${directory!}/${Global.allresume}.pdf");
          final File file = File("${directory!.path}/${Global.allresume}.pdf");

          file.writeAsBytes(await pdf.save());
        },
        child: Icon(Icons.download_for_offline),
      ),
    );
  }
}
