import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/custome_widget.dart';
import '../utils/global.dart';
import '../utils/textstyling_page.dart';

class AchievePage extends StatefulWidget {
  const AchievePage({super.key});

  @override
  State<AchievePage> createState() => _AchievePageState();
}

class _AchievePageState extends State<AchievePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.getAppBar(title: "Achivements", context: context),
      body: Container(
        color: Colors.grey.shade200,
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 35),
          width: 370,
          height: double.infinity,
          color: primaryWhite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35, bottom: 35),
                  child: Text(
                    "Enter Achievements",
                    style: TextStyling.contentLabes,
                  ),
                ),
                ...Global.allSkills.map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(left: 20, right: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            // onChanged:(){},
                            // controller: ,
                            decoration: InputDecoration(
                              hintText: "Exceeded sales 17% average",
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              Global.allSkills.remove(e);
                            });
                          },
                          icon: Icon(
                            Icons.delete_outline_outlined,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          Global.allSkills.add(TextEditingController());
                        });
                      },
                      child: Icon(Icons.add)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
