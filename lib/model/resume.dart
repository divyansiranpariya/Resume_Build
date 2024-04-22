import 'package:flutter/material.dart';

import 'dart:io';

class Resume {
  String name;
  String email;
  String phone;
  String address;
  File? profileImageFile;

  //career
  String career;
  String current;

  //education
  String course;
  String school;
  String collage;
  String year;

  // personal details
  String dob;
  String nationality;
  String gender;
  List<String> language;

  //EDUCATOION

  String company;
  String schoo;
  String role;
  String joindate;
  String exitdate;

  //project
  String title;
  String roles;
  String technologies;
  String description;

  //reference
  String ref;
  String desgnation;
  String oraganation;

  //Declaration
  String descript;
  String date;
  String place;

  Resume({
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    required this.profileImageFile,
    required this.career,
    required this.current,
    required this.course,
    required this.school,
    required this.collage,
    required this.year,
    required this.dob,
    required this.gender,
    required this.language,
    required this.nationality,
    required this.company,
    required this.schoo,
    required this.role,
    required this.joindate,
    required this.exitdate,
    required this.title,
    required this.roles,
    required this.technologies,
    required this.description,
    required this.ref,
    required this.desgnation,
    required this.oraganation,
    required this.descript,
    required this.date,
    required this.place,
  });
}
