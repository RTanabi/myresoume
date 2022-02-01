import 'package:myresume/WordFolder/word_page.dart';

//english
List date = ["2020 - Present", "2018 - 2020", "2017 - 2018"];
List title = ["Editor", "Writer at Large", "Intern"];
List detail = [
  "I'm a paragraph. Click here to add your own text and edit me. It’s easy. Just click “Edit Text” or double click me to add your own content and make changes to the font.",
  "I'm a paragraph. Click here to add your own text and edit me. It’s easy. Just click “Edit Text” or double click me to add your own content and make changes to the font.",
  "I'm a paragraph. Click here to add your own text and edit me. It’s easy. Just click “Edit Text” or double click me to add your own content and make changes to the font."
];
// persian
List dateFa = ["2020 - در حال حاضر", "2018 - 2020", "2017 - 2018"];
List titleFa = ["ویرایشگر", "نویسنده در بزرگ", "کارآموز"];
List detailFa = [
  "من یک پاراگراف هستم اینجا را کلیک کنید تا متن خود را اضافه کنید و من را ویرایش کنید. آسان است. فقط روی ویرایش متن کلیک کنید یا روی من دوبار کلیک کنید تا محتوای خود را اضافه کنید و تغییراتی در فونت ایجاد کنید.",
  "من یک پاراگراف هستم اینجا را کلیک کنید تا متن خود را اضافه کنید و من را ویرایش کنید. آسان است. فقط روی ویرایش متن کلیک کنید یا روی من دوبار کلیک کنید تا محتوای خود را اضافه کنید و تغییراتی در فونت ایجاد کنید.",
  "من یک پاراگراف هستم اینجا را کلیک کنید تا متن خود را اضافه کنید و من را ویرایش کنید. آسان است. فقط روی ویرایش متن کلیک کنید یا روی من دوبار کلیک کنید تا محتوای خود را اضافه کنید و تغییراتی در فونت ایجاد کنید.",
];

//education English
List dateEd = ["2015 - 2017", "2012 - 2015"];
List titleEd = [
  "Establishment Name | \nMaster’s Degree",
  "Establishment Name | \nBachelor's Degree"
];
List detailEd = [
  "I'm a paragraph. Click here to add your own text and edit me. Let your users get to know you.",
  "I'm a paragraph. Click here to add your own text and edit me. Let your users get to know you."
];
//education Persian
List dateEdFa = ["2015 - 2017", "2012 - 2015"];
List titleEdFa = [
  "نام مؤسسه | مدرک کارشناسی ارشد",
  "نام مؤسسه | مدرک کارشناسی"
];
List detailEdFa = [
  "من یک پاراگراف هستم اینجا را کلیک کنید تا متن خود را اضافه کنید و من را ویرایش کنید. به کاربران خود اجازه دهید شما را بشناسند.",
  "من یک پاراگراف هستم اینجا را کلیک کنید تا متن خود را اضافه کنید و من را ویرایش کنید. به کاربران خود اجازه دهید شما را بشناسند."
];

//skills English
List skills = [
  "I'm a paragraph. Click here to add your own text and edit me.",
  "I'm a paragraph. Click here to add your own text and edit me.",
  "I'm a paragraph. Click here to add your own text and edit me.",
  "I'm a paragraph. Click here to add your own text and edit me."
];
//skills Persian
List skillsFa = [
  "من یک پاراگراف هستم اینجا را کلیک کنید تا متن خود را اضافه کنید و من را ویرایش کنید.",
  "من یک پاراگراف هستم اینجا را کلیک کنید تا متن خود را اضافه کنید و من را ویرایش کنید.",
  "من یک پاراگراف هستم اینجا را کلیک کنید تا متن خود را اضافه کنید و من را ویرایش کنید.",
  "من یک پاراگراف هستم اینجا را کلیک کنید تا متن خود را اضافه کنید و من را ویرایش کنید."
];

//******************************** */
class Resume {
  String date;
  String title;
  String detail;
  Resume({required this.date, required this.title, required this.detail});
}
//*************************************** */

//manage work list
List workList() {
  if (language == "Fa") {
    List<Resume> resumeW = List.generate(
        date.length,
        (index) => Resume(
            date: dateFa[index],
            title: titleFa[index],
            detail: detailFa[index]));
    return resumeW;
  } else {
    List<Resume> resumeW = List.generate(
        date.length,
        (index) => Resume(
            date: date[index], title: title[index], detail: detail[index]));
    return resumeW;
  }
}

//manage education list
List educationList() {
  if (language == "Fa") {
    List<Resume> resumeW = List.generate(
        dateEdFa.length,
        (index) => Resume(
            date: dateEdFa[index],
            title: titleEdFa[index],
            detail: detailEdFa[index]));
    return resumeW;
  } else {
    List<Resume> resumeW = List.generate(
        dateEd.length,
        (index) => Resume(
            date: dateEd[index],
            title: titleEd[index],
            detail: detailEd[index]));
    return resumeW;
  }
}

//manage skills list
List skillsList() {
  if (language == "Fa") {
    List resumeW = List.generate(skillsFa.length, (index) => skillsFa[index]);
    return resumeW;
  } else {
    List resumeW = List.generate(skills.length, (index) => skills[index]);
    return resumeW;
  }
}
