import 'dart:io';

import 'package:build_resume/model/resume.dart';
import 'package:flutter/material.dart';

import '../model/workspace.dart';
import 'color.dart';

class Global {
  static List<WorkSpace> allWorkInfo = [
    WorkSpace(
      icon: Icon(
        Icons.perm_contact_cal_outlined,
        color: primaryBlack.withOpacity(0.9),
        size: 90,
      ),
      label: "Contact info",
      navigation: 'ContactPage',
    ),
    WorkSpace(
      icon: Icon(
        Icons.cases_outlined,
        color: primaryBlack.withOpacity(0.9),
        size: 90,
      ),
      label: "Carrier Objective",
      navigation: "Carrier_Objective",
    ),
    WorkSpace(
      icon: Icon(
        Icons.quick_contacts_mail_outlined,
        color: primaryBlack.withOpacity(0.9),
        size: 90,
      ),
      label: "Personal Details",
      navigation: "Personal_Details",
    ),
    WorkSpace(
      icon: Icon(
        Icons.cast_for_education_outlined,
        color: primaryBlack.withOpacity(0.9),
        size: 90,
      ),
      label: "Education",
      navigation: "EducationPage",
    ),
    WorkSpace(
      icon: Icon(
        Icons.record_voice_over_outlined,
        color: primaryBlack.withOpacity(0.9),
        size: 90,
      ),
      label: "Experiences",
      navigation: "Experience_Page",
    ),
    WorkSpace(
      icon: Icon(
        Icons.present_to_all,
        color: primaryBlack.withOpacity(0.9),
        size: 90,
      ),
      label: "Technical Skills",
      navigation: "TechnicalPage",
    ),
    WorkSpace(
      icon: Icon(
        Icons.menu_book_outlined,
        color: primaryBlack.withOpacity(0.9),
        size: 90,
      ),
      label: "Interest/Hobbies",
      navigation: "Interest",
    ),
    WorkSpace(
      icon: Icon(
        Icons.newspaper_outlined,
        color: primaryBlack.withOpacity(0.9),
        size: 90,
      ),
      label: "Projects",
      navigation: "ProjectPage",
    ),
    WorkSpace(
      icon: Icon(
        Icons.gas_meter_outlined,
        color: primaryBlack.withOpacity(0.9),
        size: 90,
      ),
      label: "Achievements",
      navigation: "AchievePage",
    ),
    WorkSpace(
      icon: Icon(
        Icons.handshake_outlined,
        color: primaryBlack.withOpacity(0.9),
        size: 90,
      ),
      label: "Reference",
      navigation: "ReferencePage",
    ),
    WorkSpace(
      icon: Icon(
        Icons.aod_outlined,
        color: primaryBlack.withOpacity(0.9),
        size: 90,
      ),
      label: "Declaration",
      navigation: "DeclarationPage",
    ),
  ];

  static List<TextEditingController> allSkills = [
    TextEditingController(),
    TextEditingController(),
  ];

  //static List<String> skillData = [];
  static String allresume = " ";
  static List<Resume> allresumeData = [];
  static Resume? selectedResume;

  //contactPage
  static String name = " ";
  static String email = " ";
  static String phone = " ";
  static String address = " ";
  static File? profileImageFile;

  //career
  static String career = " ";
  static String current = " ";

  //education
  static String course = " ";
  static String school = " ";
  static String collage = " ";
  static String year = " ";

  // personal details
  static String dob = " ";
  static String nationality = " ";
  static String gender = " ";
  static List<String> language = [];

  //experience

  static String company = " ";
  static String schoo = " ";
  static String role = " ";
  static String joindate = " ";
  static String exitdate = " ";

  //project
  static String title = " ";
  static String roles = " ";
  static String technologies = " ";
  static String description = " ";

  //reference
  static String ref = " ";
  static String desgnation = " ";
  static String oraganation = " ";

  //Declaration
  static String descript = " ";
  static String date = " ";
  static String place = " ";
}
