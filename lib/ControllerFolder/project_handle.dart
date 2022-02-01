import 'package:myresume/WordFolder/word_page.dart';

//english
List titlePr = ["Project Name 01", "Project Name 02", "Project Name 03"];
List detailPr = [
  "I'm a paragraph. Click here to add your own text and edit me. It’s easy. Just click “Edit Text” or double click me to add your own content and make changes to the font.",
  "I'm a paragraph. Click here to add your own text and edit me. It’s easy. Just click “Edit Text” or double click me to add your own content and make changes to the font.",
  "I'm a paragraph. Click here to add your own text and edit me. It’s easy. Just click “Edit Text” or double click me to add your own content and make changes to the font."
];
List imageUrlPr = [
  "myFile/image/1.webp",
  "myFile/image/2.webp",
  "myFile/image/3.webp"
];
// persian
List titlePrFa = ["پروژه 1", "پروژه 2", "پروژه 3"];
List detailPrFa = [
  "من یک پاراگراف هستم اینجا را کلیک کنید تا متن خود را اضافه کنید و من را ویرایش کنید. آسان است. فقط روی ویرایش متن کلیک کنید یا روی من دوبار کلیک کنید تا محتوای خود را اضافه کنید و تغییراتی در فونت ایجاد کنید.",
  "من یک پاراگراف هستم اینجا را کلیک کنید تا متن خود را اضافه کنید و من را ویرایش کنید. آسان است. فقط روی ویرایش متن کلیک کنید یا روی من دوبار کلیک کنید تا محتوای خود را اضافه کنید و تغییراتی در فونت ایجاد کنید.",
  "من یک پاراگراف هستم اینجا را کلیک کنید تا متن خود را اضافه کنید و من را ویرایش کنید. آسان است. فقط روی ویرایش متن کلیک کنید یا روی من دوبار کلیک کنید تا محتوای خود را اضافه کنید و تغییراتی در فونت ایجاد کنید.",
];

//******************************** */
class Project {
  String title;
  String detail;
  String imageUrl;
  Project({required this.title, required this.detail, required this.imageUrl});
}
//*************************************** */

//manage project List
List projectList() {
  if (language == "Fa") {
    List<Project> resumeW = List.generate(
        titlePrFa.length,
        (index) => Project(
              title: titlePrFa[index],
              detail: detailPrFa[index],
              imageUrl: imageUrlPr[index],
            ));
    return resumeW;
  } else {
    List<Project> resumeW = List.generate(
        titlePr.length,
        (index) => Project(
              title: titlePr[index],
              detail: detailPr[index],
              imageUrl: imageUrlPr[index],
            ));
    return resumeW;
  }
}
