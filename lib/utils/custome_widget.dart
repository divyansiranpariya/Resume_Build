import 'package:build_resume/utils/textstyling_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'color.dart';
import 'global.dart';

class CustomWidget {
  static AppBar getAppBar(
      {required String title,
      //  required Widget widget,
      required BuildContext context}) {
    return AppBar(
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(top: 37),
        child: Text(
          title,
          style: TextStyling.title,
        ),
      ),
      leading: Container(),
      backgroundColor: primaryTeal,
      bottom: AppBar(
        leading: Container(),
        backgroundColor: primaryTeal,
      ),
    );
  }

  //contact
  static label({
    required String Name,
    required String name,
    required double height,
    required dynamic control,
    required String statement,
    required String message,
    required Icon icon,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
      child: Row(
        children: [
          SizedBox(
            //  color: Colors.pink,
            width: 45,
            height: 45,
            child: icon,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: height,
            width: 238,
            decoration: BoxDecoration(
                //color: Colors.cyan,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: TextFormField(
              validator: (val) {
                if (val!.isEmpty) {
                  return statement;
                }
              },
              onSaved: (val) {
                message = val!;
              },
              controller: control,
              decoration: InputDecoration(
                // border: OutlineInputBorder(),
                disabledBorder: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12),
                hintText: name,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static primarycontent({required String title, required Icon icon}) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 30),
      child: Container(
        //color: Colors.cyanAccent,
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
                title,
                style: TextStyling.secondaryblack,
              ),
            ),
            Container(
              height: 180,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: primaryTeal.withOpacity(0.7),
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30), top: Radius.circular(25)),
              ),
              child: icon,
            ),
          ],
        ),
      ),
    );
  }

  static textfiel(
      {required statement, required message, required name, required control}) {
    return TextFormField(
      validator: (val) {
        if (val!.isEmpty) {
          return statement;
        }
      },
      onSaved: (val) {
        message = val!;
      },
      controller: control,
      decoration: InputDecoration(
        // border: OutlineInputBorder(),
        contentPadding: EdgeInsets.all(12),
        hintText: name,
      ),
    );
  }

  static textdetail({
    required text,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 7),
      child: Text(
        text,
        style: TextStyling.contentLabes,
      ),
    );
  }

  //educationform
  static edutext({
    required String msg,
    required String glb,
    required dynamic control,
    required String hintitle,
  }) {
    return TextFormField(
      style: TextStyling.secondryLabels,
      controller: control,
      validator: (val) {
        if (val!.isEmpty) {
          return msg;
        }
      },
      onSaved: (val) {
        glb = val!;
      },
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hintitle,
          contentPadding: EdgeInsets.only(top: 20, left: 15)),
    );
  }
}
