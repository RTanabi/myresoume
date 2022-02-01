import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myresume/ControllerFolder/constraints.dart';
import 'package:myresume/ControllerFolder/project_handle.dart';
import 'package:myresume/ControllerFolder/resume_handle.dart';
import 'package:myresume/ControllerFolder/resume_icon_icons.dart';
import 'package:myresume/WordFolder/word_page.dart';
import 'package:myresume/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

//********************************************************************************* */
String phone = "+98 9332869094";
String email = "rezatanabijob@gmail.com";
String linkedinURL = "";
String whatsAppURL = "";
String telegramURL = "https://pub.dev/packages/url_launcher";
String instagramURL = "";

//method***************************************************************************
void launchURL(String url) async {
  if (!await launch(url)) throw 'Could not launch $url';
}

rText(String text, double fontSize,
    {FontWeight? fontWeight,
    double? heigth,
    TextAlign? textAlign,
    Color? color}) {
  return Text(
    text,
    textAlign: textAlign,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: heigth,
      color: color ?? textColor,
    ),
  );
}

rInkWell(Widget child, onTap) {
  return InkWell(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: child);
}

rTextButton(Widget child, onTap) {
  return TextButton(
    onPressed: onTap,
    child: child,
  );
}

appbar({nameClick, resumeClick, projectClick, languageClick}) {
  return PreferredSize(
    child: StatefulBuilder(
      builder: (context, setState) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Row(
          children: [
            //title
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  //button and name to home
                  rInkWell(
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 11,
                          backgroundColor: userColor,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        //name
                        rText(word()["name"], 18, fontWeight: FontWeight.bold),
                      ],
                    ),
                    nameClick,
                  ),

                  const SizedBox(
                    width: 5,
                  ),
                  //job
                  rText(word()["job"], 12, heigth: 2),
                ],
              ),
            ),
            //action
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //resumeBTN
                  rTextButton(
                      rText(word()["resumeBTN"], 14,
                          color: MainClassState.pageindex == 1
                              ? selectTextColor
                              : textColor),
                      resumeClick),
                  //space
                  Container(
                    width: 1,
                    height: 20,
                    color: textColor,
                  ),
                  //projectBTN
                  rTextButton(
                      rText(word()["projectBTN"], 14,
                          color: MainClassState.pageindex == 2
                              ? selectTextColor
                              : textColor),
                      projectClick),

                  //space
                  const SizedBox(
                    width: 30,
                  ),
                  //language BTN
                  rTextButton(
                      rText(word()["languageBTN"], 14, color: textColor),
                      languageClick),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    preferredSize: const Size(double.infinity, 70),
  );
}

rLine() {
  return Divider(
    color: textColor,
    indent: 50,
    endIndent: 50,
    height: 0.5,
  );
}

bottomItem(Widget constText, Widget child) {
  return Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        constText,
        const SizedBox(height: 7),
        child,
      ],
    ),
  );
}

bottomWidget() {
  return Container(
    height: 170,
    padding: const EdgeInsets.only(left: 60, right: 60, bottom: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //phone
        bottomItem(
          rText(word()["constPhone"], 17, fontWeight: FontWeight.bold),
          rText(phone, 14),
        ),
        //email
        bottomItem(
          rText(word()["constEmail"], 17, fontWeight: FontWeight.bold),
          rText(email, 14),
        ),
        //follow me
        bottomItem(
          rText(word()["constFollow"], 17, fontWeight: FontWeight.bold),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              rInkWell(
                const Icon(
                  ResumeIcon.linkedin,
                  size: 18,
                ),
                () {
                  launchURL(linkedinURL);
                },
              ),
              const SizedBox(width: 10),
              rInkWell(
                const Icon(
                  ResumeIcon.whatsapp,
                  size: 18,
                ),
                () {
                  launchURL(whatsAppURL);
                },
              ),
              const SizedBox(width: 10),
              rInkWell(
                const Icon(
                  ResumeIcon.telegram_plane,
                  size: 18,
                ),
                () {
                  launchURL(telegramURL);
                },
              ),
              const SizedBox(width: 10),
              rInkWell(
                const Icon(
                  ResumeIcon.instagram,
                  size: 18,
                ),
                () {
                  launchURL(instagramURL);
                },
              ),
            ],
          ),
        ),
        //copyright
        bottomItem(
          Container(),
          rText(word()["constMaker"], 12, heigth: 1.7),
        ),
      ],
    ),
  );
}

workWidget(int i) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //date
        SizedBox(
          width: 100,
          child: rText(workList()[i].date.toString(), 14),
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //title
            rText(workList()[i].title.toString(), 16,
                fontWeight: FontWeight.bold),
            //detail
            SizedBox(
              width: 330,
              child: rText(
                workList()[i].detail.toString(),
                14,
                heigth: 2,
              ),
            )
          ],
        ),
      ],
    ),
  );
}

educationWidget(int i) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //date
        SizedBox(
          width: 100,
          child: rText(educationList()[i].date.toString(), 14),
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //title
            rText(educationList()[i].title.toString(), 16,
                fontWeight: FontWeight.bold),
            //detail
            SizedBox(
              width: 330,
              child: rText(
                educationList()[i].detail.toString(),
                14,
                heigth: 2,
              ),
            )
          ],
        ),
      ],
    ),
  );
}

skillsWidget(int i) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //space
        const SizedBox(
          width: 115,
        ),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            rText("+    ", 14, fontWeight: FontWeight.bold, heigth: 1.8),
            //detail
            SizedBox(
              width: 300,
              child: rText(
                skillsList()[i].toString(),
                14,
                heigth: 2,
              ),
            )
          ],
        ),
      ],
    ),
  );
}

projectListWidget(int i) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 150),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //title and details
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              rText(projectList()[i].title.toString(), 20,
                  fontWeight: FontWeight.bold),
              const SizedBox(
                height: 10,
              ),
              //details
              SizedBox(
                width: 450,
                child: rText(projectList()[i].detail.toString(), 14, heigth: 2),
              ),
            ],
          ),
        ),
        //image
        Expanded(
          child: Container(
            height: 300,
            width: 350,
            color: backImage,
            child: Image.asset(
              projectList()[i].imageUrl.toString(),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    ),
  );
}
