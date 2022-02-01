import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:myresume/ControllerFolder/all_widget.dart';
import 'package:myresume/ControllerFolder/constraints.dart';
import 'package:myresume/ControllerFolder/project_handle.dart';
import 'package:myresume/ControllerFolder/resume_handle.dart';
import 'package:myresume/WordFolder/word_page.dart';

class MainClass extends StatefulWidget {
  const MainClass({Key? key}) : super(key: key);

  @override
  MainClassState createState() => MainClassState();
}

class MainClassState extends State<MainClass> {
  List buttonHover = [false, false];
  List buttonName = [word()["resumeBTN"], word()["projectBTN"]];
  List<Color> buttonColor = [resumeColor, projectColor];
  static int pageindex = 0;
  bool loadPage = true;
  //functions***********************************************************************

  nameClick() {
    setState(() {
      pageindex = 0;
    });
  }

  resumeClick() {
    setState(() {
      buttonHover = [false, false];
      pageindex = 1;
    });
  }

  projectClick() {
    setState(() {
      buttonHover = [false, false];
      pageindex = 2;
    });
  }

  languageClick() {
    setState(() {
      if (language == "Fa") {
        language = "En";
      } else {
        language = "Fa";
      }
    });
  }

  setpage() {
    switch (pageindex) {
      case 0:
        return mainDesktop();
      case 1:
        return resumeDesktop();
      case 2:
        return projectDesktop();
      default:
    }
  }

  //********************************************************************************

  //widget
  mainDesktop() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 500,
            margin: const EdgeInsets.symmetric(vertical: 100),
            child: Row(
              children: [
                //image
                Expanded(
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Container(
                      height: 470,
                      width: 470,
                      decoration: BoxDecoration(
                        color: backImage,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: backImage.withOpacity(0.2),
                            blurRadius: 100,
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage(userImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ]),
                ),

                const SizedBox(width: 35),
                //text
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //const text
                        Expanded(
                          child: rText(word()["mainHello"], 90,
                              fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: 400,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  rText(
                                    word()["mainTitleAbout"],
                                    18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  rText(
                                    word()["mainAbout"],
                                    14,
                                    heigth: 2,
                                  ),
                                ]),
                          ),
                        ),
                        // buttons
                        Expanded(
                          child: SizedBox(
                            width: 275,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                2,
                                (index) => InkWell(
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onHover: (value) {
                                    setState(() {
                                      buttonHover[index] = value;
                                    });
                                  },
                                  onTap:
                                      index == 0 ? resumeClick : projectClick,
                                  child: Container(
                                    width: 130,
                                    height: 130,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: buttonHover[index]
                                          ? Colors.transparent
                                          : buttonColor[index],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.black, width: 0.5),
                                    ),
                                    child: rText(
                                        index == 0
                                            ? word()["resumeBTN"]
                                            : word()["projectBTN"],
                                        18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //bottom
          rLine(),
          bottomWidget(),
        ],
      ),
    );
  }

  resumeDesktop() {
    return Directionality(
      textDirection: language == "En" ? TextDirection.ltr : TextDirection.rtl,
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(60, 80, 60, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 140),
              child: SizedBox(
                height: 50,
                child:
                    rText(word()["resumeBTN"], 35, fontWeight: FontWeight.bold),
              ),
            ),
            //body
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 140, vertical: 55),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //section title
                  Expanded(
                    child: rText(word()["constWork"], 20,
                        fontWeight: FontWeight.bold),
                  ),
                  //works
                  Expanded(
                    child: Column(
                      children: List.generate(
                        date.length,
                        (index) => workWidget(index),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            rLine(),
            //Education
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 140, vertical: 55),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //section title
                  Expanded(
                    child: rText(word()["constEducation"], 20,
                        fontWeight: FontWeight.bold),
                  ),
                  //Education
                  Expanded(
                    child: Column(
                      children: List.generate(
                        dateEd.length,
                        (index) => educationWidget(index),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            rLine(),
            //Skills & Expertise
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 140, vertical: 55),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //section title
                  Expanded(
                    child: rText(word()["constSkills"], 20,
                        fontWeight: FontWeight.bold),
                  ),
                  //Skills
                  Expanded(
                    child: Column(
                      children: List.generate(
                        skills.length,
                        (index) => skillsWidget(index),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            rLine(),
            bottomWidget(),
          ],
        ),
      ),
    );
  }

  projectDesktop() {
    return Directionality(
      textDirection: language == "En" ? TextDirection.ltr : TextDirection.rtl,
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(60, 80, 60, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 140),
              child: SizedBox(
                height: 50,
                child: rText(word()["projectBTN"], 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            //body
            Padding(
              padding: const EdgeInsets.fromLTRB(140, 60, 140, 0),
              child: Column(
                children: List.generate(
                  titlePr.length,
                  (index) => projectListWidget(index),
                ),
              ),
            ),
            rLine(),
            bottomWidget(),
          ],
        ),
      ),
    );
  }

  ///******************************************************************************** */

  @override
  void initState() {
    setState(() {
      var brightness = SchedulerBinding.instance!.window.platformBrightness;
      print(brightness);
      if (brightness == Brightness.dark) {
        textColor = Colors.white;
      } else {
        textColor = Colors.black;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: language == "En" ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
          appBar: appbar(
              nameClick: nameClick,
              languageClick: languageClick,
              projectClick: projectClick,
              resumeClick: resumeClick),
          body: setpage()),
    );
  }
}
