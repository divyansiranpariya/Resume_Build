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

  //image_picker images= image_picker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: primaryTeal,
      ),
      body: Container(
        color: primaryTeal,
        child: Column(
          children: [
            Container(
              //  color: Colors.cyanAccent,
              height: 230,
              width: 180,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: primaryWhite,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: EdgeInsets.only(bottom: 18),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Contact Info",
                      style: TextStyling.secondaryblack,
                    ),
                  ),
                  Container(
                    height: 180,
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
                                    onPressed: () {},
                                    child: Icon(Icons.camera_alt_outlined),
                                  ),
                                  FloatingActionButton(
                                    mini: true,
                                    elevation: 3,
                                    onPressed: () {
                                      // imagePic.pickImage(
                                      //   Source:ImageSource.gallery
                                      // );
                                    },
                                    child: Icon(Icons.browse_gallery_outlined),
                                  ),
                                ],
                              );
                            });
                      },
                      child: CircleAvatar(
                        radius: 60,
                        child: Icon(
                          Icons.add,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
                flex: 5,
                child: SingleChildScrollView(
                  child: Container(
                    // color: Colors.red,
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
                        ),
                        CustomWidget.label(
                          Name: "Email :",
                          name: "Email",
                          height: 60,
                          control: emailController,
                          statement: "required Email",
                          message: Global.email,
                        ),
                        CustomWidget.label(
                          Name: "Phone :",
                          name: "Phone",
                          height: 60,
                          control: phoneController,
                          statement: "required phone",
                          message: Global.phone,
                        ),
                        CustomWidget.label(
                          Name: "Address :",
                          name: "Address",
                          height: 90,
                          control: addressController,
                          statement: "required Address",
                          message: Global.address,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 35,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                  )),
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
