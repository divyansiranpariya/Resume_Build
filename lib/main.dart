import 'package:build_resume/screens/achivement_page.dart';
import 'package:build_resume/screens/carrier_objective.dart';
import 'package:build_resume/screens/contactPage.dart';
import 'package:build_resume/screens/declaration_page.dart';
import 'package:build_resume/screens/education_page.dart';
import 'package:build_resume/screens/experience_page.dart';
import 'package:build_resume/screens/home_page.dart';
import 'package:build_resume/screens/interest_page.dart';
import 'package:build_resume/screens/personal_detail.dart';
import 'package:build_resume/screens/project_page.dart';
import 'package:build_resume/screens/refrence.dart';
import 'package:build_resume/screens/pdf_view.dart';
import 'package:build_resume/screens/splacescreen.dart';
import 'package:build_resume/screens/technical_skills.dart';
import 'package:build_resume/screens/workSpace_page.dart';
import 'package:flutter/material.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(
  //     SystemUiOverlayStyle(statusBarColor: Colors.teal.shade200));
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'SplaceScreen',
      routes: {
        '/': (context) => const HomePage(),
        'SplaceScreen': (context) => const SplaceScreen(),
        'WorkspacePage': (context) => const WorkspacePage(),
        'ContactPage': (context) => const ContactPage(),
        'Carrier_Objective': (context) => const Carrier_Objective(),
        'Personal_Details': (context) => const Personal_Details(),
        'EducationPage': (context) => const EducationPage(),
        'Experience_Page': (context) => const Experience_Page(),
        'TechnicalPage': (context) => const TechnicalPage(),
        'Interest': (context) => const Interest(),
        'ProjectPage': (context) => const ProjectPage(),
        'AchievePage': (context) => const AchievePage(),
        'ReferencePage': (context) => const ReferencePage(),
        'DeclarationPage': (context) => const DeclarationPage(),
        'ResumePage': (context) => const ResumePage(),
      }));
}
