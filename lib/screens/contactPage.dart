import 'dart:io';

import 'package:build_resume/utils/textstyling_page.dart';
import 'package:build_resume/utils/tosted_message.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

import '../utils/color.dart';
import '../utils/custome_widget.dart';
import '../utils/global.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  GlobalKey<FormState> contactInfoKey = GlobalKey();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  ImagePicker imagePic = ImagePicker();
  XFile? xFile;
  String? pickImagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Resume WorkSpace",
          style: TextStyling.title,
        ),
        centerTitle: true,
        leading: Container(),
        backgroundColor: primaryTeal,
      ),
      body: Container(
        width: 410,
        height: double.infinity,
        color: Colors.grey.shade200,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 200,
                width: 250,
                //   decoration: BoxDecoration(
                //     color: Colors.grey.shade200,
                //     boxShadow: <BoxShadow>[
                //       BoxShadow(
                //         color: Colors.grey,
                //         blurRadius: 2,
                //         spreadRadius: 2,
                //         offset: Offset(4, 3),
                //       ),
                //     ],
                //   ),

                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: 145,
                      decoration: BoxDecoration(
                        color: primaryWhite,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            spreadRadius: 3,
                            offset: Offset(2, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      //   padding: EdgeInsets.only(bottom: 18),
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Contact Page",
                          style: TextStyling.secondaryblack,
                        ),
                      ),
                    ),
                    Container(
                      height: 160,
                      width: 145,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: primaryTeal.withOpacity(0.7),
                        borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(30),
                            top: Radius.circular(25)),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text(
                                    "Pick Image",
                                  ),
                                  content: Text(
                                      "Choose Image from gallary or camera "),
                                  actions: [
                                    FloatingActionButton(
                                      mini: true,
                                      elevation: 3,
                                      onPressed: () async {
                                        xFile = await imagePic.pickImage(
                                          source: ImageSource.camera,
                                        );
                                        setState(() {
                                          if (xFile != null) {
                                            pickImagePath = xFile!.path;
                                          }
                                        });
                                      },
                                      child: Icon(Icons.camera_alt_outlined),
                                    ),
                                    FloatingActionButton(
                                      mini: true,
                                      elevation: 3,
                                      onPressed: () async {
                                        xFile = await imagePic.pickImage(
                                          source: ImageSource.gallery,
                                        );
                                        setState(() {
                                          if (xFile != null) {
                                            pickImagePath = xFile!.path;
                                          }
                                        });
                                      },
                                      child:
                                          Icon(Icons.browse_gallery_outlined),
                                    ),
                                  ],
                                );
                              });
                        },
                        child: CircleAvatar(
                          radius: 53,
                          backgroundImage: (pickImagePath != null)
                              ? FileImage(File(pickImagePath!))
                              : null,
                          child: (pickImagePath != null)
                              ? Container()
                              : Icon(
                                  Icons.add,
                                  size: 30,
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
                flex: 5,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: 340,
                        color: Colors.white,
                        height: 500,
                        child: Form(
                          key: contactInfoKey,
                          child: Column(children: [
                            CustomWidget.label(
                                Name: "Name :",
                                name: "Name",
                                height: 60,
                                control: nameController,
                                statement: "required name",
                                message: Global.name,
                                icon: Icon(
                                  Icons.person,
                                  size: 37,
                                )),
                            CustomWidget.label(
                                Name: "Email :",
                                name: "Email",
                                height: 60,
                                control: emailController,
                                statement: "required Email",
                                message: Global.email,
                                icon: Icon(
                                  Icons.email,
                                  size: 37,
                                )),
                            CustomWidget.label(
                                Name: "Phone :",
                                name: "Phone",
                                height: 60,
                                control: phoneController,
                                statement: "required phone",
                                message: Global.phone,
                                icon: Icon(
                                  Icons.phone_bluetooth_speaker,
                                  size: 37,
                                )),
                            CustomWidget.label(
                                Name: "Address :",
                                name: "Address",
                                height: 90,
                                control: addressController,
                                statement: "required Address",
                                message: Global.address,
                                icon: Icon(
                                  Icons.location_on_rounded,
                                  size: 37,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                top: 35,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  OutlinedButton(
                                    onPressed: () {
                                      nameController.clear();
                                      emailController.clear();
                                      addressController.clear();
                                      phoneController.clear();
                                    },
                                    child: Text(
                                      "clear",
                                      style: TextStyling.primaryLabels,
                                    ),
                                    style: ButtonStyle(),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      if (contactInfoKey.currentState!
                                          .validate()) {
                                        contactInfoKey.currentState!.save();

                                        tost.tostedmessage(
                                            context: context,
                                            messages:
                                                "Content information successfully....");

                                        nameController.clear();
                                        emailController.clear();
                                        addressController.clear();
                                        phoneController.clear();
                                      }
                                    },
                                    child: Text(
                                      "Save",
                                      style: TextStyling.primaryLabels,
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: primaryTeal,
                                      foregroundColor: primaryWhite,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ]),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
