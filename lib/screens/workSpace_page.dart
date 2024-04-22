import 'dart:ui';

import 'package:build_resume/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/global.dart';
import '../utils/textstyling_page.dart';

class WorkspacePage extends StatefulWidget {
  const WorkspacePage({super.key});

  @override
  State<WorkspacePage> createState() => _WorkspacePageState();
}

class _WorkspacePageState extends State<WorkspacePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Build Options",
          style: TextStyling.title,
        ),
        centerTitle: true,
        leading: Container(),
        backgroundColor: primaryTeal,
      ),
      body: Container(
        color: primaryWhite,
        child: GridView.count(
          childAspectRatio: 6 / 8,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 20,
          mainAxisSpacing: 25,
          crossAxisCount: 2,
          children: [
            ...Global.allWorkInfo.map(
              (e) => GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(e.navigation);
                },
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: primaryWhite,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            spreadRadius: 2,
                            offset: Offset(4, 3),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(bottom: 18),
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        e.label,
                        style: TextStyling.primaryLabels,
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
                      child: e.icon,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
